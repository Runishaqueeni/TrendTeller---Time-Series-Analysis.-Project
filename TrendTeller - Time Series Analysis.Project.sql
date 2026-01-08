create database TrendTeller;
use TrendTeller;

create table sales_data(
order_id int primary key,
order_date date,
product_name varchar(50),
category varchar(50),
quantity int,
sales_amount int,
region varchar(50)
);

insert into sales_data values
(1001, '2025-01-01', 'Mobile', 'Electronics', 1, 15000, 'South'),
(1002, '2025-01-02', 'Laptop', 'Electronics', 1, 55000, 'North'),
(1003, '2025-01-05', 'Shoes', 'Fashion', 2, 4000, 'West'),
(1004, '2025-02-10', 'TV', 'Electronics', 1, 42000, 'East'),
(1005, '2025-03-15', 'Shirt', 'Fashion', 3, 3000, 'South'),
(1006, '2025-04-20', 'Headphones', 'Electronics', 2, 6000, 'North'),
(1007, '2025-04-28', 'Accessories','Fashion', 2, 3000, 'South'),
(1008, '2025-05-05', 'Sarees', 'Fashion', 3, 5000, 'North'),
(1009, '2025-05-28', 'Cosmetics', 'Fashion', 2, 2000, 'West'),
(1010, '2025-06-10', 'Bags', 'Fashion', 1, 1000, 'East');

drop table if exists sales_data;

select * from sales_data;

#Total sales by day
select order_id,order_date,product_name,sum(sales_amount) as total_amount
from sales_data
group by order_id,order_date,product_name;

#Total sales by month
select month(order_date),sum(sales_amount) as Total_sales_by_month
from sales_data
group by month(order_date);

#Total sales by year
select year(order_date),sum(sales_amount) as Total_sales_by_month
from sales_data
group by year(order_date);