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
}

function goodbye {
    speak "It was very nice to meet you"
    speak "Goodbye for now!"
}

#main
echo Hello, my name is Robe.
speak-ng "Hello, my name is ro-BE."
echo
speak "Enter the number that you would like to play:"
echo
speak "1 - Get to know me"

read num

case $num in
    1)
        hello
        ;;
    *)
        goodbye
        ;;
esac
