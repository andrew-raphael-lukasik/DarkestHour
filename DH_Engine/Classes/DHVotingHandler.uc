class DHVotingHandler extends XVoting.xVotingHandler;

//NOTE: overriden to fix vote 'duplication' bug
function PlayerExit(Controller Exiting)
{
	local int i, x, ExitingPlayerIndex;

	// disable voting in single player mode
	if (Level.NetMode == NM_StandAlone)
	{
		return;
	}

	ExitingPlayerIndex = -1;

	log("____PlayerExit", 'MapVoteDebug');

	if (bMapVote || bKickVote || bMatchSetup)
	{
		// find the MVRI belonging to the exiting player
		for (i = 0; i < MVRI.Length; i++)
		{
		    // remove players vote from vote count
			if (MVRI[i] != none && (MVRI[i].PlayerOwner == none || MVRI[i].PlayerOwner == Exiting))
			{
				log("exiting player MVRI found " $ i,'MapVoteDebug');

				ExitingPlayerIndex = i;

				if (bMapVote && MVRI[ExitingPlayerIndex].MapVote > -1 && MVRI[ExitingPlayerIndex].GameVote > -1 )
				{
					for (x = 0; x < MapVoteCount.Length; x++)
					{
						if (MVRI[ExitingPlayerIndex].MapVote == MapVoteCount[x].MapIndex &&
							MVRI[ExitingPlayerIndex].GameVote == MapVoteCount[x].GameConfigIndex)
						{
							UpdateVoteCount(MapVoteCount[x].MapIndex, MapVoteCount[x].GameConfigIndex, -MVRI[ExitingPlayerIndex].VoteCount);
							break;
						}
					}
				}

				if (bKickVote)
				{
					// clear votes for exiting player
					UpdateKickVoteCount(MVRI[ExitingPlayerIndex].PlayerID, 0);

					// decrease votecount for player that the exiting player voted against
					if (MVRI[ExitingPlayerIndex].KickVote > -1 && MVRI[MVRI[ExitingPlayerIndex].KickVote] != none)
						UpdateKickVoteCount( MVRI[MVRI[ExitingPlayerIndex].KickVote].PlayerID, -1);
				}
			}

			if (bKickVote && ExitingPlayerIndex > -1 && MVRI[i] != none && MVRI[i].KickVote == ExitingPlayerIndex)
			{
				MVRI[i].KickVote = -1;
			}

			if (MVRI[i] != none && (MVRI[i].PlayerOwner == none || MVRI[i].PlayerOwner == Exiting))
			{
				log("___Destroying VRI...",'MapVoteDebug');

				MVRI[i].Destroy();
				MVRI[i] = none;

				if (bKickVote)
				{
					TallyKickVotes();
				}

				if (bMapVote)
				{
					TallyVotes(false);
				}
			}
		}
	}
}
