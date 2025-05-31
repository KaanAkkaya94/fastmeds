DROP database Fastmeds;
create database Fastmeds;
use Fastmeds;

create table categories(
	categoryID int auto_increment primary key, 
    categoryName varchar(20) not null unique
);

insert into categories (categoryName) values
('Analgesics'),
('Antibacterials'),
('Antibiotics'),
('Cough Supressants'),
('Hormones'),
('Laxatives'),
('Sedatives'),
('Sleeping Drugs'),
('Vitamins');


create table items(
	itemID int auto_increment not null primary key,
    itemName varchar(50) not null,
    itemDescription varchar(550) not null,
    itemCategory int,
    itemPrice float,
    itemPicture varchar(255) not null default 'default.jpg',
    foreign key (itemCategory) references categories(categoryID)
);

insert into items (itemName, itemDescription, itemCategory, itemPrice) values
# Analgesics
('Paramol 500mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 1, 4.99),
('Irofen 200mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 1, 4.99),
# Antibacterials
('Pemacillin 100mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 2, 4.99),
('Pernocyillin 50mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 2, 4.99),
# Antibiotics
('Axillin', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 3, 4.99),
('Azromycin 250mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 3, 4.99),
# Cough Suppressants
('Dexthorphan Syrup', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 4, 4.99),
('Benaryl Cough Liquid', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 4, 4.99),
# Hormones
('Traxine 100mcg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 5, 4.99),
('Meraxine 200mcg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 5, 4.99),
# Laxatives
('Ena Laxative Tablets', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 6, 4.99),
('Latulose Solution', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 6, 4.99),
# Sedatives
('Dizepam 5mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 7, 4.99),
('Limozepam 1mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 7, 4.99),
# Sleeping Drugs
('Metonin 3mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 8, 4.99),
('Zolone 7.5mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 8, 4.99),
# Vitamins
('Vitamin C 1000mg', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 9, 4.99),
('Multivitamin Daily', 'This is a generic description for a fictional medicine product which can be purchased on our very user friendly web store Fastmeds. Money back guarantee if you are not satisfied with our products. If you have read this far, thank you very much for taking the time to read this gibberish and we thank you for your patience as you continue to check out the rest of our beautiful app. Have a great day.', 9, 4.99);





select i.itemName as items, c.categoryName as categories, i.itemDescription AS description, i.itemPrice AS price
from items i
join categories c on i.itemCategory = c.categoryID
order by c.categoryName;


create table paymentOptions(
	paymentID int auto_increment primary key, 
    PaymentOption varchar(20) not null unique
);
create table deliveryOptions(
	deliveryID int auto_increment primary key, 
    deliveryOption varchar(25) not null unique
);


create table basket(
		basketID int auto_increment not null primary key,
        userID int,
        paymentOptionID int not null,
        deliveryOptionID int not null,
        createdAt timestamp default current_timestamp,
        basketPrice float not null,
        foreign key (paymentOptionID) references paymentOptions (paymentID),
        foreign key (deliveryOptionID) references deliveryOptions (deliveryID)
);


create table users(
	userID int auto_increment not null primary key,
    basketID int,
    userName varchar(50) unique not null,
    userPassword varchar(255) not null,
    userFirstName varchar(20) not null,
    userLastName varchar(20) not null,
    userEmail varchar(50) unique not null,
    userPhoneNumber varchar(20) not null,
    userAdress varchar(50) not null,
    userState varchar(10) not null,
    userPostcode int not null,
    foreign key (basketID) references basket(basketID)
);

insert into users (userName, userPassword, userFirstName, userLastName, userEmail, userPhoneNumber, userAdress, userState, userPostcode) values
('Admin1', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Kate', 'Smith', 'admin@gmail.com', '04123455', '7 Main st', 'Queensland', '4215'),
('Admin2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Matthew', 'Brown', 'brown@gmail.com', '04125656', '7 Main st', 'Queensland', '4215'),
('Zulfiia', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'Zulfiia', 'Suleimanova', 'sul@gmail.com', '0768788', '7 Main st', 'Queensland', '4215'),
('Steven', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'Steven', 'Steven', 'steven@gmail.com', '04123455', '7 Main st', 'Queensland', '4215'),
('Kaan', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'Kaan', 'Kaan', 'kaan@gmail.com', '04123455', '7 Main st', 'Queensland', '4215'),
('Hugh', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'Hugh', 'Jackman', 'wolverine@gmail.com', '04123455', 'Arctic region', 'Queensland', '4215');

create table admins(
	userID int auto_increment not null primary key
);

insert into admins (userID) values
(1),
(2);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    userID int,
    order_status ENUM('Pending', 'Confirmed', 'Cancelled') DEFAULT 'Confirmed',
    order_delivery_type varchar(50) not null,
    total_cost DECIMAL(10,2),
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    userFirstName varchar(20) not null,
    userLastName varchar(20) not null,
    userEmail varchar(50) not null,
    userPhoneNumber varchar(20) not null,
    FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE SET NULL
);

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT,
    itemID INT,
    quantity INT DEFAULT 1,
    FOREIGN KEY (orderID) REFERENCES orders(orderID) ON DELETE CASCADE,
    FOREIGN KEY (itemID) REFERENCES items(itemID)
);



#changed basket(paymentOption) to paymentOptions(paymentoption)
insert into  paymentOptions (paymentOption) values
('Credit Card'),
('Bank Transfer'),
('Paypal'),
('Wise');


insert into deliveryOptions (deliveryOption) values
('Normal Delivery'),
('Express Delivery'),
('Eco-Friendly Delivery'),
('Store Pick-Up');
