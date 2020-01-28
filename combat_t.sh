#! /bin/bash

#Déclaration de variable
PLAYER_HP=60
PLAYER_STR_SWORD=10
export PLAYER_HP
export PLAYER_STR_SWORD

BOKOBLIN_HP=30
BOKOBLIN_STR=5
export BOKOBLIN_HP
export BOKOBLIN_STR

CHOICE=0
export CHOICE
#FIN

until [ $BOKOBLIN_HP == 0 ];do

	echo "+--------------------------+"
	echo " Player HP : $PLAYER_HP     "
	echo "+--------------------------+"
    echo "                           +--------------------------+"
	echo "                            Bokoblin HP : $BOKOBLIN_HP "
	echo "                           +--------------------------+"

	echo "+-----------------------------------------------------+"
	echo "|[1 Attack O--[======> ]        [2 Heal  ♥  ]         |"
	echo "+-----------------------------------------------------+"

	read -r CHOICE

	if [ "$CHOICE" == 1 ]
	then
		echo "You attacked and dealt 10 damages"
		BOKOBLIN_HP=$((BOKOBLIN_HP - 10))
		sleep 1

		if [[ "$PLAYER_HP" -le 0 ]]; then
			clear
			echo "game over."
			sleep 4
			exit
		elif [[ "$BOKOBLIN_HP" -le 0 ]]; then
		    echo""
		fi
		
	elif [[$PLAYER_HP + 30 > $PLAYER_HP_MAX ]]; then
		
		echo "You are heal"
		PLAYER_HP=$((PLAYER_HP + 30))
		sleep 1
	fi
	echo "Bokoblin inflict 5 damage to you"
	PLAYER_HP=$((PLAYER_HP - 5))
done

echo "+--------------------------------------------------------+"
echo "| You win this fight ! Your secret code for 'name':'code'|"
echo "+--------------------------------------------------------+"
