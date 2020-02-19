#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   inputTypes.sh
#------------------------------------------

# \c keeps curse on same line with input. also need the -e
echo -e "Hi, please type in a word: \c"
read word
echo "The word you entered is \"$word\""


echo -e "\n\nCan you please enter 2 words: \c"
read word1 word2
echo "The words you entered were; \"$word1\" and \"$word2\""


# Read input into an array
echo -e "\n\nWhat are your favorite 3 colors?  \c"
read -a colors
echo "My favorite colors are also ${colors[0]}, ${colors[1]}, and ${colors[2]}"
echo "My favorite colors are also ${colors[@]}" # [@] prints all elements out
