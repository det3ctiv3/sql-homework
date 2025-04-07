create table test_identity(
	id int identity(1,1),
	name varchar(50)
);

insert into test_identity
values ('A'), ('B'), ('C'), ('D'), ('E')
select * from test_identity

delete from test_identity
select * from test_identity

insert into test_identity
values ('A'), ('B'), ('C'), ('D'), ('E')

truncate table test_identity
select * from test_identity
drop table test_identity



create table data_types_demo(
	num1 smallint, 
	num2 int, 
	num3 tinyint, 
	num4 bigint
);

insert into data_types_demo
values (32000, 2000000000, 255, 4000000000000)
select * from data_types_demo

select @@servername


create table for_image(
	id int primary key, 
	name varchar(50),
	photo varbinary(max)
);

insert into for_image
select 1, 'enterpreneur', BulkColumn from openrowset(
	bulk 'D:\ent.jpg' ,single_blob
) as img;


create table student(
	id int primary key identity,
	classes int, 
	tuition_per_class int, 
	total_tuition int
);


insert into student
select classes, tuition_per_class, classes*tuition_per_class
from (
	select 12 as classes, 20 as tuition_per_class
	union all
	select 10, 15
	union all
	select 20, 30

) as temp;


select * from student



create table worker(
	id int primary key,
	name varchar(50)

);

bulk insert worker
from 'C:\Users\uroko\sql-homework\lesson-2\workers.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n'
);

select * from worker