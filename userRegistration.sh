#!bin/bash

echo "Welcome to the user registration problem"

read -p "Enter the first name, make the first alphabet in Uppercase: " firstName
read -p "Enter the last name, make the first alphabet in Uppercase: " lastName
read -p "Enter the phone number: " phoneNo
read -p "Enter the password: " password

#regex expession to check first name ansd last name
pat="^[A-Z]{1}[a-z]{2,}"

#condition for first name
if [[ $firstName =~ $pat ]]
then
        echo "First name is: " $firstName; 
else
        echo "wrong input";
fi

#condition for second name
if [[ $lastName =~ $pat ]]
then
	echo "Last name is: " $lastName;
else
	echo "wrong input"
fi

#condition for phone number
patPhone="^[0-9]{2}[: :][0-9]{10}$"
if [[ $phoneNo =~ $patPhone ]]
then
        echo "Phone no is: " $phoneNo
else
        echo "false"
fi


#condition for password (Rule 1)
patPassword="[a-z]*(?=.*[A-Z])*(?=.*[0-9])*([!@#\$%\^&\*\.]{1}).{8,}$"

if [[ $password =~ $patPassword ]]
then
        echo "Password no is: " $password
else
        echo "false"
fi

