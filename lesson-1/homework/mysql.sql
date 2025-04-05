create table student(
	id int NOT NULL,
	name varchar(50),
	age int
);
alter table student
alter column id int not null;



create table product(
	product_id int,
	product_name varchar(50),
	price decimal,
	constraint uq_product_id unique(product_id)
);

alter table product
drop constraint uq_product_id;

alter table product
add constraint uq_product_id unique(product_id);

alter table product
add unique(product_id, product_name);


create table orders(
	order_id int,
	customer_name varchar(50),
	order_date date
	constraint primary_order_id primary key (order_id)
);
alter table orders
drop constraint primary_order_id;

alter table orders
add constraint primary_order_id primary key (order_id);


create table category(
	category_id int primary key,
	category_name varchar(50)
);

create table item(
	item_id int primary key,
	item_name varchar(50),
	category_id int,
	constraint fk_category_id foreign key (category_id) references category(category_id)
);

alter table item
drop constraint fk_category_id;

alter table item 
add constraint fk_category_id foreign key (category_id) references category(category_id);


create table account(
	account_id int primary key,
	balance decimal,
	account_type varchar(50),
	constraint ck_balance check (balance >0),
	constraint ck_account_type check (account_type='Checking' or account_type='Saving')
);

alter table account
drop constraint ck_balance, ck_account_type;

alter table account
add constraint ck_balance check (balance>0);

alter table account
add constraint ck_account_type check (account_type='Checking' or account_type='Saving');

create table customer(
	customer_id int primary key,
	name varchar(50),
	city varchar(50) default 'Unknown'
);

alter table customer
drop constraint DF__customer__city__6FE99F9F;

alter table customer
add city varchar(50) default 'Unknown';


create table invoice(
	invoice_id int identity,
	amount decimal
);

insert into invoice(amount)
values (100)
insert into invoice(amount)
values (200)
insert into invoice(amount)
values (300)
insert into invoice(amount)
values (400)
insert into invoice(amount)
values (500)

SET IDENTITY_INSERT invoice on;
SET IDENTITY_INSERT invoice on;

insert into invoice(amount)
values(100);


create table books(
	book_id int primary key identity,
	title varchar(100) not null,
	price decimal check (price>0),
	genre varchar(100) default 'Unknown'
);

insert into books(title, price)
values('Title', 299)
select * from books



create table book(
	book_id int primary key identity,
	title varchar(50) not null,
	author varchar(50) not null,
	published_year int
);

insert into book(title, author, published_year)
values ('First book', 'No Idea', 2030), ('Second book', 'No Idea as well', 2031), ('Third book', 'No idea again', 2040)

create table member(
	member_id int primary key identity,
	name varchar(50) not null,
	email varchar(50) not null, 
	phone_number varchar(50)
);
insert into member(name, email, phone_number)
values('John', 'johndoe@gmail.com', '9323432423'), ('Josh', 'regetrnh@fnfe.com', '43243242432')


create table loan(
	loan_id int primary key identity, 
	book_id int foreign key references book(book_id),
	member_id int foreign key references member(member_id),
	loan_date date not null, 
	return_date date

);

insert into loan(loan_date, return_date)
values('10-20-2024', '12-20-2024') 

