CREATE DATABASE HotelBlueMoonDb
GO

USE HotelBlueMoonDb
GO

CREATE TABLE tblRoomType 
(
	RoomType_ID INT PRIMARY KEY IDENTITY,
	RoomType VARCHAR(50) NOT NULL
)
GO

CREATE TABLE tblCustomer
(
	Customer_ID INT PRIMARY KEY IDENTITY,
	Customer_Name VARCHAR(50) NULL,
	Phone_Number VARCHAR(15) NULL,
	Email VARCHAR(50) NULL,
	Customer_Address VARCHAR(200) NULL,
	CheckIn DATE NULL,
	CheckOut DATE NULL,
	RoomType_ID INT REFERENCES tblRoomType(RoomType_ID),
	Amount MONEY NULL,
	Picture IMAGE NULL,
)
GO
CREATE TABLE tblReservation
(
	Reservation_ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NULL,
	Phone VARCHAR(15) NULL,
	CheckIn DATE NULL,
	CheckOut DATE NULL,
	TotalCost MONEY NULL,
	RoomType_ID INT REFERENCES tblRoomType(RoomType_ID)
)
GO

CREATE TABLE tblPayment
(
	Payment_ID INT PRIMARY KEY IDENTITY,
	Customer_Name VARCHAR(50),
	Payment_Date DATE,
	Amount MONEY
)
GO

-------=======*******=======-------
--Some Data Insertation For Text

INSERT INTO tblRoomType VALUES ('--SELECT ONE--'),('Single'),('Double'),('Quad')
GO

select * from tblCustomer