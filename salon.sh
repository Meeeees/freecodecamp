#!/bin/bash

echo -e "\n~~~~~ MY SALON ~~~~~\n"

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

MAIN_MENU() {
  if [[ -z $1 ]]
  then
    echo -e "Welcome to My Salon, how can I help you?\n"
  else
    echo -e "\n$1"
  fi

  SERVICES=$($PSQL " SELECT * FROM services")
  echo "$SERVICES" | while read SERVICE_ID BAR NAME;
  do
    echo "$SERVICE_ID) $NAME"
  done

  read SERVICE_ID_SELECTED

  re='^[0-9]+$'
  if [[ $SERVICE_ID_SELECTED =~ $re ]] ; then
    SELECTED_SERVICE=$($PSQL "SELECT name FROM services WHERE service_id='$SERVICE_ID_SELECTED'")
  

    if [[ -z $SELECTED_SERVICE ]]
    then
      MAIN_MENU "I could not find that service. What would you like today?"
    fi

    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE

    CUSTOMER=$($PSQL "SELECT * FROM customers WHERE phone='$CUSTOMER_PHONE'")
    if [[ -z $CUSTOMER ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      insert=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')  RETURNING customer_id;")
    fi
    NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
    customer_id=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

    echo -e "\nWhat time would you like your cut,$NAME?"
    read SERVICE_TIME
    inserted_appointment=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$customer_id' ,'$SERVICE_ID_SELECTED' , '$SERVICE_TIME');")

    echo -e "\nI have put you down for a$SELECTED_SERVICE at $SERVICE_TIME,$NAME."
  else 
    MAIN_MENU "I could not find that service. What would you like today?"
  fi
}

MAIN_MENU
