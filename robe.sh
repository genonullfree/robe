clear

spk=$(which espeak-ng)

function speak {
    echo $1
    $spk "$1"
}

function hello {
    speak "What is your name?"
    read name
    speak "What is your favorite color, $name?"
    read color
    speak "What is your favorite food, $name?"
    read food
    speak "How old are you, $name?"
    read age
    speak "What is your favorite Batman character?"
    read batman
    speak "What is your favorite pet?"
    read pet

    next_age=$[age+1]

    echo
    speak "Hello $name"
    speak "On your next birthday, when you turn $next_age,"
    speak "I would like to paint your room $color, with your favorite pet $pet"
    speak "and make you your favorite $food."

    clear
}

function guessing {
    num=$[$RANDOM%51]
    speak "Pick a number between 0 and 50. You have 7 guesses."
    for i in {1..7}
    do
        read guess
        if [[ "$guess" == "$num" ]]; then
            speak "Congratulations! You guessed the correct number $num!"
            return
        elif [[ "$guess" -gt "$num" ]]; then
            speak "Sorry, thats too high."
        elif [[ "$guess" -le "$num" ]]; then
            speak "Sorry, thats too low."
        fi
        speak "You have $[7-i] turns left."
    done
    speak "The number was: $num"

    clear
}

function letters {
    speak "Type the letter that appears as fast as you can"
    speak "G"
    time read letter
    if [[ $letter -eq "g" ]]; then
        speak "Good job!"
    fi
}

function goodbye {
    speak "It was very nice to meet you"
    speak "Goodbye for now!"
}

#main
echo Hello, my name is Robe.
speak-ng "Hello, my name is ro-BE."
echo

while true; do
    speak "Enter the number that you would like to play:"
    echo
    speak "1 - Get to know me"
    speak "2 - Guessing game"
    speak "3 - Learning keyboard letters"

    read num

    case $num in
        1)
            hello
            ;;
        2)
            guessing
            ;;
        *)
            goodbye
            exit
            ;;
    esac
done
