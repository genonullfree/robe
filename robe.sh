clear

echo Hello, my name is Robe.
echo It\'s pronounced ro-BEE.
echo What is your name?
read name
echo What is your favorite color?
read color
echo What is your favorite food?
read food
echo How old are you?
read age

next_age=$[age+1]

echo
echo Hello $name
echo On your next birthday, when you turn $next_age,
echo I would like to paint your room $color,
echo and make you your favorite $food.
echo
echo It was very nice to meet you $name!
echo Goodbye for now!
