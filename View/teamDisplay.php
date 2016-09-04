<?php
	require 'connect.inc.php';
	
	$query = "SELECT * FROM teamtest ORDER BY tablePosition ASC";
	
	if ($query_run = mysql_query($query)){
		
		echo "<table> <tr>"
		."<th>Position</th> <th>Name</th> <th>Played</th><th>Wins</th> <th>Draws</th>"
		." <th>Lost</th> <th>Goals Scored</th> <th>Goals Conceded</th> <th>Goal Difference</th>"
		."<th>Points</th></tr>";
		
		while ($query_row = mysql_fetch_assoc($query_run)) {
			$position = $query_row['tablePosition'];
			$name = $query_row['teamName'];
			$played = $query_row['overallPlayed'];
			$wins = $query_row['overallWon'];
			$draw = $query_row['overallDraw'];
			$lost = $query_row['overallLoss'];
			$goalsScored = $query_row['overallGoalsScored'];
			$goalsConceded = $query_row['overallGoalsConceded'];
			$goalDifference = $query_row['goalDif'];
			$points = $query_row['points'];
			
			echo "<tr><td>". $position ."</td> <td>". $name ."</td> <td>" . $played 
			."</td> <td>". $wins . "</td> <td>" . $draw . "</td> <td>" . $lost 
			."</td> <td>" . $goalsScored . "</td> <td>" . $goalsConceded . "</td> <td>"
			. $goalDifference ."</td> <td>". $points ."</td></tr>";
			
		}
		echo "</table>";
		
	} else {
		echo 'Query Failed';
		echo mysql_error();
	}

?>