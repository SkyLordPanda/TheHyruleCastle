#! /bin/bash

#Déclaration de variable
PLAYER_HP=60
PLAYER_STR_SWORD=10
export PLAYER_HP
export PLAYER_STR_SWORD

GANON_HP=150
GANON_STR=20
export GANON_HP
export GANON_STR

CHOICE=0
export CHOICE
#FIN

until [ $GANON_HP == 0 ];do

	echo "+--------------------------+"
	echo " Player HP : $PLAYER_HP     "
	echo "+--------------------------+"
    echo "                           +--------------------------+"
	echo "                            Ganon HP : $GANON_HP "
	echo "                           +--------------------------+"

	echo "+-----------------------------------------------------+"
	echo "|[1 Attack O--[======> ]        [2 Heal  ♥  ]         |"
	echo "+-----------------------------------------------------+"

	read -r CHOICE

	if [ "$CHOICE" == 1 ]
	then
		echo "You attacked and dealt 10 damages"
		GANON_HP=$((GANON_HP - 10))
		sleep 1

		if [[ "$PLAYER_HP" -le 0 ]]; then
			clear
			echo "game over."
			sleep 4
			exit
		elif [[ "$GANON_HP" -le 0 ]]; then
		    echo""
		fi
		
	else
		echo "You are heal"
		PLAYER_HP=$((PLAYER_HP + 30))
		sleep 1
	fi
	echo "Bokoblin inflict 5 damage to you"
	PLAYER_HP=$((PLAYER_HP - 5))
done

echo "+--------------------------------------------------------+"
echo "| You win this fight ! Congratulation! You saved Hyule!  |"
echo "+--------------------------------------------------------+"
