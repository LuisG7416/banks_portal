create database banks_portal;

use banks_portal;

create table accounts (
	accountId int not null unique auto_increment,
    ownerName varchar(45) not null,
    owner_ssn varchar(45) not null,
    balance decimal (10,2) default 0.00,
    accountStatus varchar(45),
    primary key(accountId)
);

create table Transactions (
	transactionId int not null unique auto_increment,
    accountId int not null,
    transactionType varchar(45) not null,
    transactionAmount decimal (10,2) not null,
    primary key(transactionId)
);

insert into accounts
values (1, "Maria Jozef", 123456789, 10000.00),
 (2, "Linda Jones", 987654321, 2600.00), 
 (3, "John McGrail", 222222222, 100.50), 
 (4, "Patty Luna", 111111111, 509.75);
 
 insert into Transactions
 values (001, 1, "deposit", 650.98), 
 (002, 3, "Withdrawl", 899.87),
 (003, 3, "Deposit", 350.00);
 
DELIMITER //

create procedure GetTransaction()
begin
	select * from Transactions where accountId = 'accountID';
end //

DELIMITER ;

DELIMITER //

create procedure depositAccount()
begin
	select
    accountId
    balance
    from 
    accounts
    where
    accountId = 'accountID';
    update accounts
    set balance = 'depositAmount'
    where accountId ='accountID';
end //

DELIMITER ;

create procedure withdrawAccount()
begin
	select
    accountId
    balance
    from 
    accounts
    where
    accountId ='accountID';
    update accounts
    set balance = 'withdrawAmount'
    where accountId ='accountID';
end //

DELIMITER ;