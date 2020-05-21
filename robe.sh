clear

echo Hello, my name is Robe.
speak-ng "Hello, my name is ro-BE."
echo It\'s pronounced ro-BEE.
speak-ng "Its pronounced ro-BE."
echo What is your name?
speak-ng "What is your name?"
read name
echo What is your favorite color, $name?
speak-ng "What is your favorite color, $name?"
read color
echo What is your favorite food, $name?
speak-ng "What is your favorite food, $name?"
read food
echo How old are you, $name?
speak-ng "How old are you, $name?"
read age

next_age=$[age+1]

echo
echo Hello $name
speak-ng "Hello $name"
echo On your next birthday, when you turn $next_age,
speak-ng "On your next birthday, when you turn $next_age,"
echo I would like to paint your room $color,
speak-ng "I would like to paint your room $color,"
echo and make you your favorite $food.
speak-ng "and make you your favorite $food."
echo
echo It was very nice to meet you $name!
speak-ng "It was very nice to meet you $name!"
echo Goodbye for now!
speak-ng "Goodbye for now!"
