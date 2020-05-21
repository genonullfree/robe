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
echo What is your favorite Batman character?
speak-ng "What is your favorite Batman character?"
read batman
echo What is your favorite pet?
speak-ng "What is your favorite pet?"
read pet

next_age=$[age+1]

echo
echo Hello $name
speak-ng "Hello $name"
echo On your next birthday, when you turn $next_age,
speak-ng "On your next birthday, when you turn $next_age,"
echo I would like to paint your room $color, with your favorite pet $pet,
speak-ng "I would like to paint your room $color, with your favorite pet $pet"
echo and make you your favorite $food.
speak-ng "and make you your favorite $food."
echo
echo It was very nice to meet you $name!
speak-ng "It was very nice to meet you $name!"
echo Goodbye for now, $batman!
speak-ng "Goodbye for now, $batman!"
