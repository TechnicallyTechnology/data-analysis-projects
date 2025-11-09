flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

## Set a variable called choice to the flavor you want to search for.

choice = 'strawberry'   
print("You chose:", choice)

## Use an if statement to check if choice is in the flavors dictionary.

choice = 'strawberry'   
if choice in flavors:
    print(f"{choice} is available! It costs ${flavors[choice]:.2f}.")
else:
    print(f"Sorry, {choice} is not on the menu.")

## If it is, set another variable called cost to the value associated with choice.

choice = 'strawberry'  
if choice in flavors:
    cost = flavors[choice]
    print(f"{choice} is available and costs ${cost:.2f}.")
else:
    print(f"Sorry, {choice} is not on the menu.")

## If it isn’t, set cost to 0.

choice = 'rocky road' 
if choice in flavors:
    cost = flavors[choice]
    print(f"{choice} is available and costs ${cost:.2f}.")
else:
    cost = 0
    print(f"Sorry, {choice} is not on the menu. Setting cost to ${cost:.2f}.")

## Print the cost.

choice = 'rocky road'
if choice in flavors:
    cost = flavors[choice]
    print(f"{choice} is available.")
else:
    cost = 0
    print(f"Sorry, {choice} is not on the menu.")
print("Cost:", cost)

### Search a Dictionary Part 2:

## Initialize two variables: highest_cost to 0 and fanciest to an empty string.

highest_cost = 0
fanciest = ""

print("Highest cost initialized to:", highest_cost)
print("Fanciest flavor initialized to:", repr(fanciest))

## Loop through the flavors dictionary using a for loop.

for flavor in flavors:
    print("Checking flavor:", flavor, "which costs", flavors[flavor])

## For each flavor, check if its price is higher than highest_cost.

for flavor in flavors:
    price = flavors[flavor]
    if price > highest_cost:
        highest_cost = price      
        fanciest = flavor          
print(f"The fanciest flavor is '{fanciest}' with a cost of ${highest_cost:.2f}.")

## If it is, update fanciest to this flavor and highest_cost to its price.

for flavor in flavors:
    price = flavors[flavor]
    if price > highest_cost:
        fanciest = flavor        
        highest_cost = price    
print(f"The fanciest flavor is '{fanciest}' with a price of ${highest_cost:.2f}.")

## After the loop, print the most expensive flavor.

for flavor in flavors:
    price = flavors[flavor]
    if price > highest_cost:
        fanciest = flavor
        highest_cost = price
print(f"The most expensive flavor is '{fanciest}' at ${highest_cost:.2f}.")