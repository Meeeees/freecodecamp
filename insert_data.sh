#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    RESULT_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    RESULT_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")


    if [[ -z $RESULT_WINNER_ID ]]
    then
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      RESULT_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      echo Inserted into teams, winner $WINNER
    fi
    if [[ -z $RESULT_OPPONENT_ID ]]
    then
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      RESULT_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo Inserted into teams, opponent $OPPONENT
    fi
  echo $RESULT_WINNER_ID, $RESULT_OPPONENT_ID


    RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $RESULT_WINNER_ID, $RESULT_OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")


    # INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES($WINNER)")
    # echo $WINNER $OPPONENT 
    

  fi
done

  
