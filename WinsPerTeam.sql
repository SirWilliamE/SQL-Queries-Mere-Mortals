SELECT teams.TeamName, 
		COUNT(match_games.WinningTeamID) AS NumberOfWins 
        FROM bowlingleagueexample.teams
        INNER JOIN bowlingleagueexample.match_games
			ON teams.TeamID = 
				match_games.WinningTeamID
		GROUP BY teams.TeamName;
