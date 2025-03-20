echo "Exercise 1"
echo "Today is $(date)."
echo "You are in $(pwd) and your host is $(hostname)"
echo
echo "Exercise 2"
ONE=$1
TWO=$2
THREE=$3
echo "There are $# parameters that include $@."
echo "The first is $ONE, the second is $TWO, the third is $THREE."
echo 
echo "Exercise 3"
# read -p "What is the name of the street you grew up on? " mystreet
# read -p "What is the name of the town you grew up in? " mytown
echo "The street I grew up on was $mystreet and the town was $mytown."

echo "Exercise 4"
read -p "What is your favorite operating system? " os
#os_lower=$(echo "$os" | tr '[:upper:]' '[:lower:]')
if [[ "$os_lower" == "windows" ]]; then
    echo "Eww... Windows? Are you serious?"
elif [[ "$os_lower" == "mac" ]]; then
    echo "Mac? That's... cute."
elif [[ "$os_lower" == "linux" ]]; then
    echo "Great choice! 🐧"
else
    echo "Is \"$os\" an operating system?"
fi

echo "Exercise 5"
sentence="I have a"
for animal in moose cow goose sow
do
    sentence="$sentence $animal,"
done
echo
echo "Final sentence:"
echo "$sentence"

