#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE teams, games RESTART IDENTITY"

cat 'games.csv' | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
    then
      #get winner_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      
      #if not found
      if [[ -z $WINNER_ID ]]
        then
          #insert WINNER into teams
          INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
          echo $INSERT_WINNER_RESULT
		  
          #check if INSERT_WINNER_RESULT IS OK
          if [[ $INSERT_WINNER_RESULT == 'INSERT 0 1' ]]
            then
			
            #get WINNER_ID
            WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
            echo "WINNER_ID: "$WINNER_ID
          fi
      fi

      #get opponent_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      
      #if not found
      if [[ -z $OPPONENT_ID ]]
        then
          #insert OPPONENT into teams
          INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
          echo $INSERT_OPPONENT_RESULT
		  
          #check if INSERT_OPPONENT_RESULT IS OK
          if [[ $INSERT_OPPONENT_RESULT == 'INSERT 0 1' ]]
            then
            #get OPPONENT_ID
            OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
            echo "OPPONENT_ID: "$OPPONENT_ID
          fi
      fi

      #insert data into games table
      INSERT_INTO_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
      echo 'inserted into GAMES: '$INSERT_INTO_GAMES_RESULT
  fi
done
