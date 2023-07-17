#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -t --no-align -c"
re='^[0-9]+$'

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
else
  if [[ $1 =~ $re ]]; then
    # atomic number
    data=$($PSQL "
        SELECT properties.*, elements.name, elements.symbol, types.type FROM properties 
        INNER JOIN elements 
        ON 
          elements.atomic_number = properties.atomic_number 
        INNER JOIN types
        ON
          types.type_id = properties.type_id
        WHERE properties.atomic_number = '$1'
        ORDER BY properties.atomic_number;
        ")
    if [[ -z $data ]]; then
      echo "I could not find that element in the database."
    else
      echo $data | while IFS=$'|' read -r ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID NAME SYMBOL TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done
    fi
  elif [[ ${#1} -lt 3 ]]; then
    # symbol
    data=$($PSQL "
        SELECT properties.*, elements.name, elements.symbol, types.type from elements
        INNER JOIN properties 
        ON 
          elements.atomic_number = properties.atomic_number 
        INNER JOIN types
        ON
          types.type_id = properties.type_id
        WHERE elements.symbol = '$1'
        ORDER BY properties.atomic_number;
        ")
    if [[ -z $data ]]; then
      echo "I could not find that element in the database."
    else
      echo $data | while IFS=$'|' read -r ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID NAME SYMBOL TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done
    fi
  else 
    # name
    data=$($PSQL "
          SELECT  properties.*, elements.name, elements.symbol, types.type from elements
          INNER JOIN properties 
          ON 
            elements.atomic_number = properties.atomic_number 
          INNER JOIN types
          ON
            types.type_id = properties.type_id
          WHERE elements.name = '$1'
          ORDER BY properties.atomic_number;
          ")
    if [[ -z $data ]]; then
      echo "I could not find that element in the database."
    else
      echo $data | while IFS=$'|' read -r ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID NAME SYMBOL TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done
    fi
  fi
fi
