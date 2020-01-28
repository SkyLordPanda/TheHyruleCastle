#! /bin/bash

#TITLE
clear
cat title.txt
read -p  "              -Press any key to start-"
clear
#FIN

#START HISTORY
echo "+---------------------------------------------------------------------------------+"
echo "|You entered the castle in order to save Princess Zelda, to end the war in Hyrule.|"
echo "+---------------------------------------------------------------------------------+"
sleep 4
clear
echo "+---------------------------------------------------------------------------------+"
echo "|Link, you're the only one who can beat Ganon, Hyrule is in danger ...            |"
echo "+---------------------------------------------------------------------------------+"
cat link.txt
read -p "     Start the game > "
#FIN

./lvl.sh
