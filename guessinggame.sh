#!/bin/bash

# Get the number of files in the current directory
file_count=$(ls -1 | wc -l)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
    # Prompt the user for a guess
    read -p "Enter your guess: " guess

    # Check if the input is a valid number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    # Compare the guess with the actual file count
    if (( guess < file_count )); then
        echo "Too low! Try again."
    elif (( guess > file_count )); then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files: $file_count"
        break
    fi
done
