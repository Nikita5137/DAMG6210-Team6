/************** Database **************/





/* Create a database CabManagementDb */

CREATE DATABASE CabManagementDb





/************** Tables **************/


/* Create tables in database CabManagementDb */

CREATE TABLE Driver
(
    DriverID INT NOT NULL Check(DriverID> 100),
    DriverFName VARCHAR(25) NOT NULL,
    DriverLName VARCHAR(25) NOT NULL,
    Licence VARCHAR(25) NOT NULL,
    DateOfBirth DATE,
    DriverContact INT NOT NULL,
    CONSTRAINT DRIVER_PK PRIMARY KEY (DriverID),
);
CREATE TABLE Shift
(
    ShiftID INT NOT NULL Check(ShiftID = 1 or ShiftID = 2 or ShiftID = 3 OR ShiftID = 4),
    ShiftName VARCHAR(25) NOT NULL,
    ShiftStartTime TIME NOT NULL,
    ShiftEndTime TIME NOT NULL,
    CONSTRAINT Shift_PK PRIMARY KEY (ShiftID),
);
CREATE TABLE DriverShift
(
    DriverID INT NOT NULL Check(DriverID> 100),
    ShiftID INT NOT NULL Check(ShiftID = 1 or ShiftID = 2 or ShiftID = 3 or ShiftID = 4),
    CONSTRAINT DriverShift_PK PRIMARY KEY (DriverID,ShiftID ),
);
CREATE TABLE Cab
(
    RegistrationNumber VARCHAR(25) NOT NULL,
    DriverID INT ,
    CabType VARCHAR(25) NOT NULL,
    CONSTRAINT Cab_PK PRIMARY KEY (RegistrationNumber),
    CONSTRAINT Cab_FK FOREIGN KEY (DriverID) REFERENCES [Driver] (DriverID),
);
CREATE TABLE Customer
(
    CustomerID INT NOT NULL,
    CustomerFName NVARCHAR(25),
    CustomerLName NVARCHAR(25),
    CustomerAptNo NVARCHAR(30),
    CustomerStreet NVARCHAR(30),
    CustomerCity NVARCHAR(20),
    CustomerState CHAR(2),
    CustomerZipCode VARCHAR(9),
    CustomerBirthDate VARCHAR(30),
    CustomerContact BIGINT NOT NULL,
    CustomerEmail VARCHAR(30),
    CONSTRAINT Customer_PK PRIMARY KEY (CustomerID),
);
CREATE TABLE Trip
(
    TripID INT NOT NULL CHECK(TripID > 1000),
    CustomerID INT,
    DriverID INT,
    TripStartLocation VARCHAR(25) NOT NULL,
    TripEndLocation VARCHAR(25) NOT NULL,
    TripStartTime TIME NOT NULL,
    TripEndTime TIME NOT NULL,
    DistanceTravelled DECIMAL(5,2) NOT NULL,
    TripDuration INT NOT NULL,
    TripStatus VARCHAR(25) NOT NULL,
    PromotionID VARCHAR(10),
    CONSTRAINT Trip_PK PRIMARY KEY (TripID),
    CONSTRAINT Trip_FK1 FOREIGN KEY (CustomerID) REFERENCES [Customer] (CustomerID),
    CONSTRAINT Trip_FK2 FOREIGN KEY (DriverID) REFERENCES [Driver] (DriverID),
);
CREATE TABLE Rating
(
    RatingID INT NOT NULL,
    CustomerID INT,
    DriverID INT,
    TripID INT,
    Rating INT CHECK(Rating = 1 or Rating = 2 or Rating = 3 or Rating = 4 or Rating = 5),
    [Date] DATE,
    CONSTRAINT Rating_PK PRIMARY KEY (RatingID),
    CONSTRAINT Rating_FK1 FOREIGN KEY (CustomerID) REFERENCES [Customer] (CustomerID),
    CONSTRAINT Rating_FK2 FOREIGN KEY (DriverID) REFERENCES [Driver] (DriverID),
    CONSTRAINT Rating_FK3 FOREIGN KEY (TripID) REFERENCES [Trip] (TripID),
);
CREATE TABLE Destination
(
    TripID INT NOT NULL CHECK(TripID > 1000),
    CustomerID INT NOT NULL,
    CONSTRAINT Destination_PK PRIMARY KEY (TripID,CustomerID ),
);
CREATE TABLE Promotion
(
    PromotionID VARCHAR(10) NOT NULL,
    PromotionName VARCHAR(25) NOT NULL,
    PromotionPercent INT NOT NULL,
    CONSTRAINT Promotion_PK PRIMARY KEY (PromotionID),
);
CREATE TABLE Payment
(
    PaymentID INT NOT NULL CHECK(PaymentID >= 10000),
    TripID INT,
    PaymentModeID INT NOT NULL,
    CONSTRAINT Payment_PK PRIMARY KEY (PaymentID),
    CONSTRAINT Payment_FK1 FOREIGN KEY (TripID) REFERENCES [Trip] (TripID),
    CONSTRAINT Payment_FK2 FOREIGN KEY (PaymentModeID) REFERENCES [PaymentType] (PaymentModeID),
);
CREATE TABLE PaymentType
(
    PaymentModeID INT NOT NULL CHECK(PaymentModeID > 5000),
    PaymentMode VARCHAR(25) NOT NULL CHECK(PaymentMode = 'Cash' or PaymentMode = 'Credit/Debit' or PaymentMode = 'Paypal' or PaymentMode = 'GooglePay' ),
    CONSTRAINT PaymentMode_PK PRIMARY KEY (PaymentModeID ),
)

/************** Table-Level Check Constraints **************/

--Creating a function for verifying valid format for phone number--
CREATE FUNCTION isPhoneNumberValid(@phoneNumber BIGINT)
RETURNS bit AS
BEGIN 
	DECLARE @bitFlag AS bit
	IF(@phonenumber>=1000000000 and @phoneNumber<=9999999999)
	--IF(@phoneNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' AND LEN(@phoneNumber) = 10)
		SET @bitFlag=1
	ELSE
		SET @bitFlag=0
	RETURN @bitFlag
END


--Creating a function for checking valid format of email address--
CREATE FUNCTION isEmailValid(@EMAIL VARCHAR(30))
RETURNS bit
AS
BEGIN     
  DECLARE @bitFlag as bit
  IF(@EMAIL <> '' AND @EMAIL NOT LIKE '%@%._%')
     SET @bitFlag = 0  -- Setting flag to 0 for invalid cases
  ELSE 
    SET @bitFlag = 1   -- Setting flag to 1 for valid cases
  RETURN @bitFlag
END


--Adding constraint to customer_details table based on isEmailValid function--
ALTER TABLE Customer ADD CONSTRAINT isEmailValidConstraint CHECK (dbo.isEmailValid([CustomerEmail])=1);

/************** FUNCTIONS **************/


/* Function used to Get trip details based on ShiftName */

CREATE FUNCTION GetTripDetailsByShift (@ShiftName VARCHAR(25))
RETURNS TABLE 
AS
RETURN (
SELECT sh.ShiftName, t.TripID, CONCAT(COALESCE(d.DriverFName,' '),' ',COALESCE(d.DriverLName,' ')) AS DriverFullName, CONCAT(COALESCE(c.CustomerFName,' '),' ',COALESCE(c.CustomerLName,' ')) AS CustomerFullName , t.TripStartLocation, t.TripEndLocation, t.TripStartTime, t.TripEndTime
FROM shift sh
    JOIN DriverShift ds ON sh.ShiftID = ds.ShiftID
    JOIN Trip t ON t.DriverID = ds.DriverID
    JOIN Driver d ON d.DriverID = t.DriverID
    JOIN Customer c ON C.CustomerID = t.CustomerID
WHERE sh.ShiftName =  @ShiftName 
)

SELECT *
FROM GetTripDetailsByShift ('Morning Shift')
SELECT *
FROM GetTripDetailsByShift ('Afternoon Shift')
SELECT *
FROM GetTripDetailsByShift ('Midnight Shift')
SELECT *
FROM GetTripDetailsByShift ('Evening Shift')



/* Function used to Get Total Revenue based on ShiftName */


create Function GetShiftRevenue (@ShiftName VARCHAR(25))
Returns DECIMAL(5,2) 
as BEGIN
    DECLARE @TotalRevenue DECIMAL(5,2)
    SET @TotalRevenue = (select SUM(p.TotalPayment1) as TotalShiftRevenue
    from Payment p
        JOIN Trip t ON p.TripID=t.TripID
        JOIN DriverShift ds ON ds.DriverID = t.DriverID
        JOIN Shift s ON s.ShiftID = ds.ShiftID
    WHERE s.ShiftName = @ShiftName
    GROUP BY s.ShiftName)
    RETURN @TotalRevenue;
END

select CabManagementDb.dbo.GetShiftRevenue('Midnight Shift') as TotalShiftRevenue
select CabManagementDb.dbo.GetShiftRevenue('Morning Shift') as TotalShiftRevenue
select CabManagementDb.dbo.GetShiftRevenue('Afternoon Shift') as TotalShiftRevenue
select CabManagementDb.dbo.GetShiftRevenue('Evening Shift') as TotalShiftRevenue



/* Computed Column using Function */

CREATE FUNCTION TotalPayment(@TripID INT)
RETURNS DECIMAL(5,2)
AS
BEGIN
    DECLARE @Total DECIMAL(5,2)
    SELECT @Total = ((2 + 0.25*(t.DistanceTravelled/4) + 0.25*(t.TripDuration) + 1) - 
 (2 + 0.25*(t.DistanceTravelled/4) + 0.25*(t.TripDuration) + 1)* p.PromotionPercent /100 )

    FROM Trip t JOIN Promotion p on t.PromotionID = p.PromotionID
    WHERE TripID = @TripID
    RETURN @Total
END


ALTER TABLE payment ADD  TotalPayment1 as (dbo.TotalPayment(tripid))
SELECT *
FROM Payment
ALTER TABLE payment ALTER COLUMN PaymentID IDENTITY
(10001,1)
TRUNCATE TABLE payment

ALTER TABLE payment DROP COLUMN [TimeStamp]
ALTER TABLE payment DROP COLUMN TotalAmount





/************** STORED PROCEDURES **************/


/* to count number of trips for a particular driver */

CREATE OR ALTER PROCEDURE GetAllDriverTrips
    @DriverID INT ,
    @count int output
AS
BEGIN
    set @count =(
SELECT COUNT(@DriverID)
    FROM dbo.Trip
    WHERE Trip.DriverID = @DriverID)
END


declare @counter int
EXEC dbo.GetAllDriverTrips 101, @count =@counter output
select 'count' = @counter

/* to count number of trips Customer has taken */

CREATE PROCEDURE GetAllCustomerTrips
    @CustomerID  INT,
    @custcount int OUTPUT
AS
BEGIN
    SET @custcount = (
SELECT COUNT(@CustomerID)
    FROM dbo.Trip
    WHERE Trip.CustomerID = @CustomerID)
END


declare @counter int
EXEC dbo.GetAllCustomerTrips 2122, @custcount =@counter output
select 'custcount' = @counter


/*Third Procedure to calculate individual Total Trip amount*/


Create or Alter PROCEDURE CalculateTripAmount1
    @TripID INT,
    @TotalAmount DECIMAL(5,2) OUTPUT
AS
DECLARE @Amount DECIMAL(5,2)
BEGIN

    SELECT @Amount = ((2 + 0.25*(t.DistanceTravelled/4) + 0.25*(t.TripDuration) + 1) - 
 (2 + 0.25*(t.DistanceTravelled/4) + 0.25*(t.TripDuration) + 1)* p.PromotionPercent /100 )

    FROM Trip t JOIN Promotion p on t.PromotionID = p.PromotionID
    WHERE TripID = @TripID
    SET @TotalAmount = @Amount
END

DECLARE @Amt DECIMAL(5,2)
EXEC  CalculateTripAmount1 1001,@TotalAmount = @Amt OUTPUT
SELECT 'Total Amount' = @Amt



/*Fourth Procedure: Get Promotion Details based on Customer ID*/


CREATE OR ALTER PROCEDURE GetPromotionData
    @CustID INT,
    @Promotion VARCHAR(10) OUTPUT
AS
declare @Promo Varchar(10)
BEGIN

    select @Promo= PromotionID
    FROM Trip t
    WHERE CustomerID = @CustID

    set @Promotion = @Promo
END

declare @prom varchar(10)
EXEC GetPromotionData 2121 , @Promotion=@prom output
select 'Promotion' = @Prom




/* Fifth Procedure: Get number of Drivers with rating 3+ */
create or alter PROCEDURE NumberOfDriverwithrating4
    @count int OUTPUT
--@DriverID int ,
As
BEGIN
    Select @count = count(Driverid)
    from Rating
    where rating>3

END

DECLARE @counter INT
EXEC NumberOfDriverwithrating4 @count = @counter output
select 'Count' = @counter

SELECT *
FROM Trip






/************** COLUMN ENCRYPTION **************/


/* Customer Phone Number Encryption */

USE CabManagementDb
GO
alter table Customer add [Encrypted_Phone] varbinary(400) NULL
GO
create MASTER KEY
ENCRYPTION BY PASSWORD = 'DMDDTeam6';
SELECT name KeyName,
    symmetric_key_id KeyID,
    key_length KeyLength,
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;
go
CREATE CERTIFICATE PhonePass
WITH SUBJECT = 'Employee Sample Phone';
GO
CREATE SYMMETRIC KEY PhonePass_SM
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE PhonePass;
GO
OPEN SYMMETRIC KEY PhonePass_SM
DECRYPTION BY CERTIFICATE PhonePass;
UPDATE Customer set
[Encrypted_Phone] = EncryptByKey(Key_GUID('PhonePass_SM'), CONVERT(varbinary,[CustomerContact]) )
GO

/* Decrypt Customer Phone Number */
SELECT *, CONVERT(bigint, DecryptByKey([Encrypted_Phone])) AS 'Decrypted Phone'
FROM Customer; GO

/* Customer Email Encryption */

USE CabManagementDb
GO
alter table Customer add [Encrypted_Email] varbinary(400) NULL
GO
SELECT name KeyName,
    symmetric_key_id KeyID,
    key_length KeyLength,
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;
go
CREATE CERTIFICATE EmailPass
WITH SUBJECT = 'Employee Sample Email';
GO
CREATE SYMMETRIC KEY EmailPass_SM
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE EmailPass;
GO
OPEN SYMMETRIC KEY EmailPass_SM
DECRYPTION BY CERTIFICATE EmailPass;
UPDATE Customer set
[Encrypted_Email] = EncryptByKey(Key_GUID('EmailPass_SM'), CONVERT(varbinary,[CustomerEmail]) )
GO

/* Decrypt Customer Email */
SELECT *, CONVERT(varchar, DecryptByKey([Encrypted_Email])) AS 'Decrypted Email'
FROM Customer; GO




/************** COLUMN DECRYPTION **************/


/* Decrypt Customer Email */
SELECT *, CONVERT(varchar, DecryptByKey([Encrypted_Email])) AS 'Decrypted Email'
FROM Customer; GO





/************** VIEWS **************/


/* View 1 : To get average rating of a driver using Rating and Driver */

CREATE VIEW GetDriverAverageRating
AS
    SELECT d.DriverID, AVG(r.Rating) AS Average_Rating
    FROM Driver d
        JOIN Rating r
        ON d.DriverID = r.DriverID
    GROUP BY d.DriverID


SELECT *
FROM GetDriverAverageRating


/* View 2 : To get check number of payments done for a particular Payment Mode */

CREATE OR ALTER VIEW PaymentModeCheck
AS
    SELECT PaymentID, PaymentModeID
    FROM Payment
    WHERE PaymentModeID = (Select PaymentModeID
    FROM PaymentType
    WHERE PaymentMode = 'Credit/Debit')


SELECT *
FROM PaymentModeCheck


/* View 3 : To get the number of times a particular type of cab is used in trip */

CREATE OR ALTER VIEW CabTypeCount

AS
    SELECT COUNT(DriverID) AS NoOfCabs, CabType
    FROM Cab
    WHERE Cabtype IN ('SUV', 'Hatchback', 'Sedan', 'Coupe', 'Van', 'Maruti')
    GROUP BY CabType

SELECT *
FROM CabTypeCount


/* View 4 : To get number of trip taken for each Promotion ID */

CREATE OR ALTER VIEW GetTripsbyPromotion
AS
    SELECT CustomerID, COUNT (*) AS NoOfTrips, PromotionID
    FROM TRIP
    GROUP BY PromotionID, CustomerID

SELECT *
FROM GetTripsbyPromotion

/* View 5 : To get number of times a promotion id is used  */

Create or ALter VIEW GETnoOFtimesPromoIDused AS
SELECT PromotionID ,  COUNT(PromotionID) AS NoOfPromo

from Trip
WHERE PromotionID IN ('NEWUSER','HAPPYHOURS','MIDNIGHT12','SAVE15','REFERCAB','RIDE13')
GROUP BY PromotionID


SELECT *
FROM GETnoOFtimesPromoIDused


/************** TRIGGERS **************/

/* Triggers */

/* Trigger to display Confirmation Mesage when payment is added to the Payment table*/
CREATE TRIGGER trig_paymentConfirmation
ON Payment  
AFTER INSERT, UPDATE   
AS 
DECLARE @PrintMessage NVARCHAR(50);  
SET @PrintMessage = N'Payment Completed on '  
    + RTRIM(CAST(GETDATE() AS NVARCHAR(30)))  
    + N'.';  
PRINT @PrintMessage;
GO

--Drop triggers
drop TRIGGER paymentConfirmation1

--Display all triggers
SELECT name, is_instead_of_trigger
FROM sys.triggers
WHERE type = 'TR';



/* Trigger to encrypt column automatically in a table on insert */

CREATE OR ALTER TRIGGER trig_InsertCustomerData
ON Customer
AFTER INSERT
AS
UPDATE Customer set
[Encrypted_Email] = EncryptByKey(Key_GUID('EmailPass_SM'), CONVERT(varbinary,[CustomerEmail]) )
UPDATE Customer set
[Encrypted_Phone] = EncryptByKey(Key_GUID('PhonePass_SM'), CONVERT(varbinary,[CustomerContact]) )
GO


/* Trigger to encrypt customer email and phone number on insert */


CREATE OR ALTER TRIGGER trig_InsertCustomerData ON Customer AFTER INSERT AS UPDATE Customer
set[Encrypted_Email] = EncryptByKey (Key_GUID ('EmailPass_SM'), CONVERT(varbinary,[CustomerEmail]) )
UPDATE Customer set[Encrypted_Phone] = EncryptByKey(Key_GUID('PhonePass_SM'), CONVERT(varbinary,[CustomerContact]) 
)
GO





/************** NON-CLUSTERED INDEX **************/


/* NonClustered Index on Customer Last Name Column  */

CREATE NONCLUSTERED INDEX IX_CustomerDetails_Name
ON Customer (CustomerLName ASC) INCLUDE (CustomerID)





/* NonClustered Index on Driver First Name Column  */

CREATE NONCLUSTERED INDEX IX_DriverDetails_Name
ON Driver (DriverFName ASC) INCLUDE (DriverID)









/************** CLUSTERED INDEX **************/

/* Check Clustered Index on all tables */

EXECUTE sp_helpindex Driver
EXECUTE sp_helpindex Shift
EXECUTE sp_helpindex DriverShift
EXECUTE sp_helpindex Cab
EXECUTE sp_helpindex Customer
EXECUTE sp_helpindex Trip
EXECUTE sp_helpindex Rating
EXECUTE sp_helpindex Destination
EXECUTE sp_helpindex Driver
EXECUTE sp_helpindex PaymentType
EXECUTE sp_helpindex Promotion
EXECUTE sp_helpindex Payment





/************** DROP DATABASE **************/

/* DROP  database CabManagementDb */

DROP DATABASE CabManagementDb



