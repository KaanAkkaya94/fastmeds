# Libraries to Install

Make sure to install the required libraries using the requirements.txt file

Run the following commands before attempting to run this code.
```bash
py -m pip install -r requirements.txt
python3 -m pip install -r requirements.txt
```

# Welcome to our Webapplication "Fastmeds"
The following paragraph will include all instructions to set up the database/program to make it run properly

# Set-Up Instructions
Nr.1 Run the mysql commands from the file "database.sql" from the folder "project"

Nr.2 Set the password in app.config['MYSQL_PASSWORD'] = '1Password' from the __init__.py file to the correct password of the mysql workbench

Nr.3 Run the programm using the run.py file and click on link that takes you to the webapplication running local


# Instructions for using the webapplication (Guide through every functio)
# Navigating/Shopping
Nr. 1 The main page displays all available categories. By clicking on "SHOP NOW", the user will see every item that is listed in that specific category

Nr. 2 Users are then able to view an item by clicking on the picture of the item. It will take the user to an item detail page.

Nr. 3 Users can add an item to their basket by clicking on "+ ADD TO BASKET", either from the item overview under a certain category or with the same buttom from the items details page

Nr. 4 The Navbar includes a search bar. Users can search for a specific item. The webapplication will then display every item with the name, or the items that start with the user input. Example: User enters "Me", output will be "Meraxine 200mcg" and "Metonin 3mg"

# Login/Registration
Nr. 1 The Navbar includes the "Login" button if no one is currently loged in. In case an user is logged in it will instead show "Logout".

Nr. 2 By clicking on "Login" the user will be taken to a new webpage, where he can log in to his account using his username and password. If one of the inputs doesn't match with a user from the db, it will flash an error message.

Nr. 3 A user can register using the "Login" button. It will take him to another webpage where he can enter his details using a form. If an input is invalid or missing, an error message will be flashed. Error handling for if a user enters a username/email that already exists in the database.

Nr. 4 After a successfull registration the user will be created in the db

Nr. 5 From the beginning there are 2 Admins and 3 users. 
The login for the Admins are "Admin1" and "Admin2", both using the password "1234"
The login for the Zulfiia, Kaan, Steven, using the password "1111"

Nr. 6 Admins can see the button "ADMIN" in the Navbar. This button is used to either create a new category or a new item. Both will be created in the database too and are shown on the main page.

# Basket
Nr. 1 The "Basket" button is always visible on the right side of Navbar. 

Nr. 2 The Basket contains every item the user has put into it. If no item is in the basket, it will instead show a button "continue shopping" which will take the user back to the main page

Nr. 3 If there are items in the basket, they will be listed with their corresponding picture, description, name and price. 

Nr. 4 Users have the fucntions to increase/decrease the amount of any item in their basket, as well as deleting them. On the bottom left is also a button "clear" to completely delete all items from the basket.

Nr. 5 The basket updates dynamically and will calculate the total sum of all items in the basket.

Nr. 6 From the basket, users are able to move on to the checkout

# Checkout
Nr. 1 The checkout page contains a form the user has to fill with personal details. If a field is left empty, it will flash an error message if the user wants to continue.

Nr. 2 After providing all information, users are able to click on "proceed to checkout". This will take them to the order summary page
Nr. 3 The order summary page shows a summary of the items as well as the amount the user wants to buy.

Nr. 4 Users can now choose from 4 different payment options and 4 different delivery options using two drop-down menus.

Nr. 5 After clicking on "Pay now" the order will be saved in "orders" in the mysql db

Nr. 6 Users can click on "Continue to shop" to be taken back to the main page