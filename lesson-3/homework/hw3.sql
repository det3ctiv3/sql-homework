CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Smith', 'Sales', 56234.50, '2018-06-14'),
(2, 'Jane', 'Doe', 'IT', 73400.00, '2019-02-10'),
(3, 'Alice', 'Brown', 'HR', 48120.75, '2020-11-30'),
(4, 'Bob', 'Johnson', 'Marketing', 65900.00, '2017-05-05'),
(5, 'Charlie', 'Davis', 'Finance', 89000.00, '2016-01-18'),
(6, 'Diana', 'Lopez', 'IT', 78000.00, '2021-03-12'),
(7, 'Eve', 'Wilson', 'Sales', 65200.00, '2022-07-01'),
(8, 'Frank', 'Garcia', 'HR', 54000.00, '2019-10-23'),
(9, 'Grace', 'Miller', 'Marketing', 71000.00, '2020-04-11'),
(10, 'Hank', 'Lee', 'Finance', 88000.00, '2015-12-01'),
(11, 'Ian', 'Martinez', 'Sales', 50500.00, '2017-09-25'),
(12, 'Julia', 'Anderson', 'IT', 60000.00, '2018-08-15'),
(13, 'Kevin', 'Thomas', 'HR', 47000.00, '2019-12-08'),
(14, 'Laura', 'Taylor', 'Marketing', 76000.00, '2016-11-20'),
(15, 'Mike', 'White', 'Finance', 95000.00, '2021-05-03'),
(16, 'Nina', 'Harris', 'Sales', 68000.00, '2022-02-27'),
(17, 'Oscar', 'Clark', 'IT', 72000.00, '2020-03-19'),
(18, 'Pam', 'Lewis', 'HR', 59000.00, '2018-01-29'),
(19, 'Quinn', 'Robinson', 'Marketing', 81000.00, '2019-06-18'),
(20, 'Rachel', 'Walker', 'Finance', 94000.00, '2023-01-01'),
(21, 'Steve', 'Young', 'Sales', 61500.00, '2020-09-14'),
(22, 'Tina', 'King', 'IT', 70000.00, '2017-03-07'),
(23, 'Uma', 'Scott', 'HR', 50000.00, '2021-04-20'),
(24, 'Victor', 'Green', 'Marketing', 82000.00, '2022-06-13'),
(25, 'Wendy', 'Baker', 'Finance', 93000.00, '2016-07-25'),
(26, 'Xavier', 'Adams', 'Sales', 67500.00, '2019-11-17'),
(27, 'Yara', 'Nelson', 'IT', 71000.00, '2021-08-08'),
(28, 'Zack', 'Carter', 'HR', 56000.00, '2022-03-03'),
(29, 'Amy', 'Mitchell', 'Marketing', 79000.00, '2018-12-12'),
(30, 'Brian', 'Perez', 'Finance', 91000.00, '2017-10-06');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    Status VARCHAR(20) CHECK (Status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'))
);


INSERT INTO Orders (OrderID, CustomerName, OrderDate, TotalAmount, Status)
VALUES
(1, 'Alice Smith', '2022-01-10', 120000.50, 'Pending'),
(2, 'Bob Johnson', '2021-12-05', 4990.99, 'Shipped'),
(3, 'Charlie Davis', '2020-03-15', 8900.00, 'Delivered'),
(4, 'Diana Lopez', '2023-02-20', 1500.75, 'Cancelled'),
(5, 'Eve Wilson', '2021-07-30', 30000.00, 'Pending'),
(6, 'Frank Garcia', '2020-11-11', 2045.90, 'Shipped'),
(7, 'Grace Miller', '2019-09-05', 1809.60, 'Delivered'),
(8, 'Hank Lee', '2022-04-25', 4100.40, 'Pending'),
(9, 'Ian Martinez', '2018-06-17', 905.30, 'Cancelled'),
(10, 'Julia Anderson', '2020-10-01', 5500.00, 'Shipped'),
(11, 'Kevin Thomas', '2023-03-12', 6705.25, 'Delivered'),
(12, 'Laura Taylor', '2021-08-14', 900.00, 'Pending'),
(13, 'Mike White', '2022-05-20', 1005.00, 'Shipped'),
(14, 'Nina Harris', '2017-12-19', 13000.40, 'Delivered'),
(15, 'Oscar Clark', '2018-09-01', 20000.00, 'Cancelled'),
(16, 'Pam Lewis', '2020-01-08', 3105.99, 'Shipped'),
(17, 'Quinn Robinson', '2023-01-24', 100.10, 'Pending'),
(18, 'Rachel Walker', '2019-04-13', 400.50, 'Delivered'),
(19, 'Steve Young', '2022-02-07', 250.00, 'Shipped'),
(20, 'Tina King', '2021-10-31', 180.45, 'Cancelled'),
(21, 'Uma Scott', '2019-11-11', 280.75, 'Pending'),
(22, 'Victor Green', '2020-03-22', 330.00, 'Delivered'),
(23, 'Wendy Baker', '2021-06-18', 60.00, 'Shipped'),
(24, 'Xavier Adams', '2022-07-09', 470.90, 'Delivered'),
(25, 'Yara Nelson', '2020-08-14', 100.00, 'Cancelled'),
(26, 'Zack Carter', '2021-01-01', 220.00, 'Shipped'),
(27, 'Amy Mitchell', '2023-03-17', 305.55, 'Delivered'),
(28, 'Brian Perez', '2019-10-10', 149.99, 'Pending'),
(29, 'John Smith', '2020-12-12', 199.99, 'Delivered'),
(30, 'Jane Doe', '2018-01-04', 99.99, 'Shipped');


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);


INSERT INTO Products (ProductID, ProductName, Category, Price, Stock)
VALUES
(1, 'Smartphone X', 'Electronics', 699.99, 50),
(2, 'T-shirt Blue', 'Clothing', 19.99, 200),
(3, 'Cookbook', 'Books', 25.00, 120),
(4, 'Blender 3000', 'Home', 89.99, 80),
(5, 'RC Car', 'Toys', 45.50, 75),
(6, 'Laptop Pro', 'Electronics', 1199.99, 30),
(7, 'Winter Jacket', 'Clothing', 129.99, 60),
(8, 'Sci-fi Novel', 'Books', 18.00, 110),
(9, 'Coffee Maker', 'Home', 55.00, 90),
(10, 'Puzzle 1000pcs', 'Toys', 22.50, 150),
(11, 'Tablet Mini', 'Electronics', 499.99, 45),
(12, 'Sneakers', 'Clothing', 74.99, 130),
(13, 'History Book', 'Books', 30.00, 100),
(14, 'Air Fryer', 'Home', 99.99, 70),
(15, 'Doll Set', 'Toys', 35.00, 85),
(16, 'Monitor 27"', 'Electronics', 229.99, 40),
(17, 'Jeans', 'Clothing', 49.99, 180),
(18, 'Biography', 'Books', 28.00, 60),
(19, 'Microwave Oven', 'Home', 120.00, 50),
(20, 'Board Game', 'Toys', 40.00, 95),
(21, 'Smartwatch', 'Electronics', 199.99, 55),
(22, 'Jacket', 'Clothing', 99.99, 100),
(23, 'Children’s Book', 'Books', 15.00, 140),
(24, 'Vacuum Cleaner', 'Home', 150.00, 35),
(25, 'Action Figure', 'Toys', 39.99, 125),
(26, 'Gaming Laptop', 'Electronics', 1399.99, 25),
(27, 'Hat', 'Clothing', 24.99, 170),
(28, 'Fantasy Novel', 'Books', 21.00, 80),
(29, 'Toaster', 'Home', 35.00, 100),
(30, 'LEGO Set', 'Toys', 59.99, 200);


with top10percent as(
	select * from employees where salary >= ( select min(salary) from (select top 10 percent salary from Employees order by salary desc
) as TopSalaries 
))
select department, avg(salary) as AverageSalary, 
case 
	when avg(salary) > 80000 then 'High'
	when avg(salary)<80000 and avg(salary) >50000 then 'Medium'
	else 'Low'
end as SalaryCategory

from top10percent
group by Department
order by AverageSalary desc	
offset 2 rows
fetch next 5 rows only;


select 
	case 
		when status in ('Shipped',  'Delivered') then 'Completed'
		when status = 'Pending' then 'Pending'
		when status = 'Cancelled' then 'Cancelled'
	end as OrderStatus,
	count(OrderId) as Total_Orders,
	sum(totalAmount) as Total_Revenue
from orders
where orderDate between '2023-01-01' and '2023-12-31'
group by
	case 
		when status in ('Shipped', 'Delivered') then 'Completed'
		when status = 'Pending' then 'Pending'
		when status = 'Cancelled' then 'Cancelled'
	end
having sum(TotalAmount) >5000
order by Total_Revenue desc;



select category,
iif(max(stock)=0, 'Out of Stock', iif(max(stock) in (1,10), 'Low Stock', 'In Stock')) as 'Stock_Status',
max(Price) as 'Most Expensive Product'

from Products group by Category order by max(Price) desc offset 5 rows;


