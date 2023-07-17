#!/bin/bash
NUMBER=$((RANDOM % 1000))
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -t --no-align -c"

echo "Enter your username:"
re='^[0-9]+$'

read USERNAME
GAME=true

User=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
user_ID=$(echo "$User" | cut -d "|" -f 1 | tr -d ' ')

if [[ -z $User ]]; then
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    User=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
    echo $User | while IFS='|' read ID NAME
    do
        echo "Welcome, $NAME! It looks like this is your first time here."
    done
else
    Game_info=$($PSQL "SELECT COUNT(*), MIN(tries) FROM games WHERE user_id=$user_ID;")
    echo $Game_info | while IFS='|' read GAMES_PLAYED BEST_TRIES
    do
        echo $User | while IFS='|' read ID NAME
        do
            echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_TRIES guesses."
        done
    done
fi


ID=$(echo "$User" | cut -d "|" -f 1 | tr -d ' ')


echo "Guess the secret number between 1 and 1000:"
guesses=0
while [[ $GAME ]]
do
    read GUESS
    if ! [[ $GUESS =~ ^[0-9]+$ ]]; then 
        echo "That is not an integer, guess again:"
    elif [[ $GUESS -gt $NUMBER ]]; then 
        echo "It's lower than that, guess again:"
        let "guesses++"
    elif [[ $GUESS -lt $NUMBER ]]; then 
        echo "It's higher than that, guess again:"
        let "guesses++"
    else
        let "guesses++"
        echo "You guessed it in $guesses tries. The secret number was $NUMBER. Nice job!"
        INSERT=$($PSQL "INSERT INTO games(user_id, tries) VALUES($ID, $guesses)")
        break
    fi
done
