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
SHOW DATABASES; --- Show databases
CREATE DATABASE [dbname/dbCustomerInfo]; --- Create a new database
DROP DATABASE [dbname/dbTest]; --- Delete a database and ALL DATA
USE [dbname/dbCustomerInfo]; --- Change to a database you want to do changes to
SHOW TABLES; --- Display all the tables in the current database
CREATE TABLE tblCustomerInfo (CREATE TABLE tblCustomerInfo ([colums]) --- create a table with columns
example on create table:
CREATE TABLE tblCustomerInfo (custInfoFirstName varchar(50), custInfoLastName varchar(50),custInfoAddr1 varchar(50),custInfoAddr2 varchar(50),custInfoCityName varchar(50),custInfoState varchar(10),custInfoZipCode varchar(10),custInfoPhone varchar(50));
CREATE TABLE tblTest(tstCol1 varchar(1),tstCol2 varchar(2));
DROP TABLE [dbname/tblTest]; --- Drop/Delete the table
