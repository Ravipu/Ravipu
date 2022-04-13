CREATE DATABASE cinema;
USE cinema;
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-08 12:01:54.921

-- tables
-- Table: Cashier
CREATE TABLE Cashier (
    Cashier_ID int NOT NULL,
    employee_name varchar(100) NOT NULL,
    employee_address varchar(100) NOT NULL,
    employee_salary varchar(100) NOT NULL,
    CONSTRAINT Cashier_pk PRIMARY KEY (Cashier_ID)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_id int NOT NULL,
    Customer_name varchar(100) NOT NULL,
    Customer_mobile varchar(100) NOT NULL,
    Customer_email varchar(100) NOT NULL,
    Customer_address varchar(100) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_id)
);

-- Table: FilmShow
CREATE TABLE FilmShow (
    Film_id int NOT NULL,
    film_name varchar(100) NOT NULL,
    film_language varchar(100) NOT NULL,
    film_type varchar(100) NOT NULL,
    Cashier_ID int NOT NULL,
    CONSTRAINT FilmShow_pk PRIMARY KEY (Film_id)
);

-- Table: Payment
CREATE TABLE Payment (
    Payment_id int NOT NULL,
    Customer_id int NOT NULL,
    Amount float NOT NULL,
    Date date NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_id)
);

-- Table: Ticket
CREATE TABLE Ticket (
    ticket_id int NOT NULL,
    Film_name varchar(100) NOT NULL,
    Venue varchar(100) NOT NULL,
    SeatNo int NOT NULL,
    Film_id int NOT NULL,
    CONSTRAINT Ticket_pk PRIMARY KEY (ticket_id)
);

-- foreign keys

-- Reference: FilmShow_Cashier (table: FilmShow)
ALTER TABLE FilmShow ADD CONSTRAINT FilmShow_Cashier FOREIGN KEY FilmShow_Cashier (Cashier_ID)
    REFERENCES Cashier (Cashier_ID);

-- Reference: Payment_Customer (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Customer FOREIGN KEY Payment_Customer (Customer_id)
    REFERENCES Customer (Customer_id);

-- Reference: Ticket_FilmShow (table: Ticket)
ALTER TABLE Ticket ADD CONSTRAINT Ticket_FilmShow FOREIGN KEY Ticket_FilmShow (Film_id)
    REFERENCES FilmShow (Film_id);

-- End of file.

