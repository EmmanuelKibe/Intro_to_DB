-- alx_book_store.sql

CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Authors (
    Author_ID INT PRIMARY KEY,
    Author_Name VARCHAR(215)
);

CREATE TABLE BOOKS (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(130),
    Author_ID INT,
    Price FLOAT,
    Publication_Date DATE,
    FOREIGN KEY (Author_ID) REFERENCES AUTHORS(Author_ID)
);

CREATE TABLE CUSTOMERS (
    Customer_ID INT PRIMARY KEY,
    Customer_NAME VARCHAR(215),
    Email VARCHAR(215),
    Address TEXT
);

CREATE TABLE ORDERS (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES CUSTOMERS(Customer_ID)
);

CREATE TABLE ORDER_DETAILS (
    OrderdetailID INT PRIMARY KEY,
    Order_ID INT,
    Book_ID INT,
    Quantity FLOAT,
    FOREIGN KEY (Order_ID) REFERENCES ORDERS(Order_ID),
    FOREIGN KEY (Book_ID) REFERENCES BOOKS(Book_ID)
);



