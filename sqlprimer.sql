install mysql Centos7
go to:
https://dev.mysql.com/downloads/repo/yum/
do:
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
to install the repo:
rpm -Uvh mysql57-community-release-el7-9.noarch.rpm
update to get the oracle cache:
yum update
install the sql server:
yum install mysql-community-server
start and enable the mysql daemon (mysqld):
systemctl enable mysqld && systemctl start mysqld && systemctl status mysqld
Do the mysql secure isntallation:
mysql_secure_installation
IF the mysql_secure_installation fails cause of wrong root password do:
grep 'temporary password' /var/log/mysqld.log
Restart the mysql service to make sure the changes in the secure_installation, went through
systemctl restart mysqld



SQL Statements:

USE [dbname/dbCustomerInfo]; --- Change to a database you want to do changes to


SHOW DATABASES; --- Show databases
SHOW FIELDS FROM [tablenam/tblCustomerInfo];
SHOW TABLES; --- Display all the tables in the current database


CREATE TABLE tblCustomerIDInfo (custID varchar(10) PRIMARY KEY); --- Create a table with a primary key
CREATE DATABASE [dbname/dbCustomerInfo]; --- Create a new database
CREATE TABLE tblCustomerInfo (CREATE TABLE tblCustomerInfo ([colums]) --- create a table with columns
example on create table:
CREATE TABLE tblCustomerInfo (custInfoFirstName varchar(50), custInfoLastName varchar(50),custInfoAddr1 varchar(50),custInfoAddr2 varchar(50),custInfoCityName varchar(50),custInfoState varchar(10),custInfoZipCode varchar(10),custInfoPhone varchar(50));
CREATE TABLE tblTest(tstCol1 varchar(1),tstCol2 varchar(2));


CREATE INDEX indexCustInfoID ON tblCustomerIDInfo (custID); --- Create a index in the custID column
CREATE INDEX indexCustInfoNames ON tblCustomerIDInfo (custInfoFirstName, custInfoLastName); --- Remember to change the name of indexCustInfoID to indexCustInfoNames


DROP DATABASE [dbname/dbTest]; --- Delete a database and ALL DATA
DROP TABLE [dbname/tblTest]; --- Drop/Delete the table


DELETE * FROM tblCustomerInfoBkup --- Deletes all the Data in the scheme, but keeps the table
DELETE FROM tblCustomerInfoBkup WHERE custInfoState='OH'; --- Delete all data where the criteria OH is met
DELETE FROM tblCustomerInfoBkup WHERE custInfoFirstName='John' AND custInfoLastName='Johnson'; --- Deletes all data where the criteria John and Johnson is met


SELECT * FROM [tablename/tblCustomerInfo]; --- show the data in a table
SELECT custInfoCityName,custInfoState FROM [tablename/tblCustomerInfo]; --- Display only certain fields from a table
SELECT custInfoLastName FROM tblCustomerInfo WHERE custInfoState='NY'; --- Only display people from the state NY
SELECT custInfoFirstName ,custInfoLastName FROM tblCustomerInfo WHERE custInfoState='NY'; --- Same as above just with firstname and last name
SELECT custInfoFirstName ,custInfoLastName FROM tblCustomerInfo WHERE custInfoState LIKE 'NY'; --- LIKE will search for a pattern
SELECT custInfoFirstName ,custInfoLastName FROM tblCustomerInfo WHERE custInfoState!='NY'; --- not from NY


INSERT INTO [dbname] (fields, fields2) VALUE (value_fields, value_fiends2) --- Insert data to the table
INSERT INTO tblCustomerInfoBkup SELECT * FROM tblCustomerInfo; --- Insert values from one table to another


ALTER TABLE tblCustomerInfoBkup ADD custInfoDOB varchar(10); --- Add a row called DOB to the existing table
If one does not work, try the other one:
ALTER TABLE tblCustomerInfoBkup MODIFY custInfoDOB year;
ALTER TABLE tblCustomerInfoBkup ALTER COLUMN custInfoDOB year;
