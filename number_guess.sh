#!/bin/bash
echo "Enter your username:"
read INFO

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

IS_USER=$(echo $($PSQL "SELECT user_id FROM users WHERE username = '$INFO'"))

NUMBER_TO_GUESS=""
GUESSES=""

CREATE_USER(){
  echo -e "\nWelcome, $INFO! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$INFO')")
}
GET_USER_INFO(){
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$INFO'")
  USER_NAME=$($PSQL "SELECT username FROM users WHERE username = '$INFO'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT (*) FROM games WHERE user_id = '$USER_ID'")
  BEST_GAME=$($PSQL "SELECT MIN (guesses) FROM games WHERE user_id = '$USER_ID'")
}

GENERATE_NUMBER(){
  echo -e "\nGuess the secret number between 1 and 1000:"
  NUMBER_TO_GUESS=$(( RANDOM % 1000 + 1 ))
}

COUNT_GUESSES(){
  GUESSES=0
  read NUM
 while true; do
  # First, check if it's a valid integer
  if ! [[ $NUM =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  elif [[ $NUM -gt $NUMBER_TO_GUESS ]]; then
    echo "It's lower than that, guess again:"
    ((GUESSES++))
  elif [[ $NUM -lt $NUMBER_TO_GUESS ]]; then
    echo "It's higher than that, guess again:"
    ((GUESSES++))
  else
    ((GUESSES++))
    break
  fi

  read NUM
done
  echo "You guessed it in $GUESSES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
}
INSERT_RESULTS(){
  INSERT=$($PSQL "INSERT INTO games(user_id,guesses) VALUES ('$USER_ID','$GUESSES')")
}


# CHECK IF THERE IS USER
if [[ ! -z $IS_USER ]]  # IF THERE IS NO USER WE WILL CREATE A USER NAME
  then
   GET_USER_INFO
    echo "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    GENERATE_NUMBER
    COUNT_GUESSES
    INSERT_RESULTS 
  else
    CREATE_USER
    GET_USER_INFO
    GENERATE_NUMBER
    COUNT_GUESSES
    INSERT_RESULTS
   
fi    
