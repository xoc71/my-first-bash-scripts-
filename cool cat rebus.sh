#!/bin/bash 
#!/bin/bash
echo "Hello and welcome, today is $(date)"
sleep 2
echo "Would you like to solve today's mystery and a rebus? (y/n)"
read -r answer

if [[ $answer == 'y' ]]; then
    echo "What is small, silly, has 4 paws, purrs, and likes to play with string?"
    read -r answer

    if [[ $answer == 'cat' ]]; then
        echo "Congratulations, you have solved the mystery!"
    else
        echo "Sorry, but you are wrong."
    fi
else
    echo "Goodbye!"
fi
