#!bin/bash

echo "Welcome to the user registration problem"

read -p "Enter the first name, make the first alphabet in Uppercase: " firstName
read -p "Enter the last name, make the first alphabet in Uppercase: " lastName

pat="^[A-Z]{1}[a-z]{2,}"

if [[ $firstName =~ $pat ]]
then
        echo "First name is: " $firstName; 
else
        echo "wrong input";
fi

if [[ $lastName =~ $pat ]]
then
	echo "Last name is: " $lastName;
else
	echo "wrong input"
fi
