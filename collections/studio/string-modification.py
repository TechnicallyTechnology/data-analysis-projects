my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.

modified_string = my_string[3:] + my_string[:3]

# Use a template literal to print the original and modified string in a descriptive phrase.

print(f"The original string was '{my_string}', and after modification it becomes '{modified_string}'.")


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.


# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
