#!/bin/bash
echo "Hello! This game is based on WW2 and was made by xoc71."
echo "This game is a text-based game."
sleep 1
echo "Do you wish to begin? (y/n)"
read -r start 
if [ "$start" = "y" ]; then 
    echo "Let's begin then!"
else 
    echo "Goodbye!"
    exit
fi

echo "What country would you like to play as?"
read -r country 
sleep 1 
echo "You have chosen $country"
echo "You are a soldier in the $country army."
echo "You are in a trench waiting for the command to attack."
sleep 1
echo "You hear the command to attack."
sleep 1 
echo "Suddenly, you got hit by a bullet!"
echo "What will you do?"
echo "1) Keep fighting"
echo "2) Give up"
echo "3) Run away"
echo "4) Run back to the trench"
read -r choice
case $choice in
    1) 
        if (( $RANDOM % 2 == 0 )); then
            echo "You died"
            exit
        else
            echo "You survived"
        fi
        ;;
    2) 
        echo "You gave up"
        exit
        ;;
    3) 
        echo "You ran away but got shot again"
        exit
        ;;
    4) 
        echo "You ran back to the trench"
        ;;
    *) 
        echo "Invalid choice."
        exit
        ;;
esac

echo "You are now back in the trench."
echo "You are very hungry." 
echo "What will you do?"
echo "1) Eat a ration"
echo "2) Starve"
read -r choice
if [[ $choice == 1 ]]; then
    echo "You ate a ration"
else
    echo "You starved to death"
    exit
fi

echo "You are now very tired." 
sleep 1
echo "But you hear gunshots in the distance."
echo "What will you do?"
echo "1) Go to sleep"
echo "2) Stay awake"
read -r choice 
if [[ $choice == 1 ]]; then
    echo "You went to sleep"
else
    echo "You stayed awake and died of exhaustion"
    exit
fi

echo "It's the next morning!"
sleep 1 
echo "You hear a command to prepare for something big."
echo "You are scared."
echo "What will you do?"
echo "1) Prepare for the attack"
echo "2) Run away"
read -r choice
if [[ $choice == 1 ]]; then
    echo "You prepared for the attack"
else
    echo "You ran away and stepped on a landmine"
    exit
fi

echo "You are now in the battlefield."
echo "You hear bombs dropping."
echo "What will you do?"
echo "1) Run"
echo "2) Stay"
echo "3) Hide"
echo "4) Fight"
read -r choice
if [[ $choice == 1 ]]; then
    echo "You ran and got shot"
elif [[ $choice == 2 ]]; then 
    echo "You stayed and got bombed"
elif [[ $choice == 3 ]]; then
    echo "You hid and survived"
else 
    echo "You fought and died"
    echo "It's night time."
    echo "You are very cold."
    echo "What will you do?"
    echo "1) Light a fire"
    echo "2) Freeze"
    read -r choice
    if [[ $choice == 1 ]]; then 
        echo "You lit a fire and survived"
    else
        echo "You froze to death"
        exit
    fi
fi

echo "You are now very tired."
echo "What will you do?"
echo "1) Sleep"
echo "2) Stay awake"
read -r choice
if [[ $choice == 1 ]]; then
    echo "You slept and survived"
else
    echo "You stayed awake and died"
    exit
fi

echo "It's early morning."
echo "What will you do?"
echo "1) Check what date it is"
echo "2) Go for a morning run"
echo "3) Go have breakfast"
read -r choice
if [[ $choice == 1 ]]; then 
    echo "You checked the date and it was September 2nd, 1945"
    sleep 1
    echo "You heard the news that the war is over"
    sleep 1
    echo "You won!"
    exit
elif [[ $choice == 2 ]]; then 
    echo "You went for a run and stepped on a landmine"
    exit
else
    echo "You went to have breakfast and heard that the war is over"
    sleep 1 
    echo "You survived the war"
    echo "You won!"
    exit 
fi
exit 0