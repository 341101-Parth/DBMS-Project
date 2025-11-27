CREATE TABLE Departments (
  Dept_ID varchar(3) PRIMARY KEY,
  Department TEXT NOT NULL,
  Function_Area TEXT NOT NULL
);

-- insert
INSERT INTO Departments (Dept_ID, Department, Function_Area) VALUES
('D01', 'Operations', 'Order fulfillment, logistics'),
('D02', 'Customer Support', 'Issue resolution, chat/calls'),
('D03', 'Delivery Partner Management', 'Rider onboarding & payouts'),
('D04', 'Marketing', 'Campaigns, promotions, branding'),
('D05', 'Tech & Product', 'App development, tech infra'),
('D06', 'Finance', 'Billing, payments, accounting'),
('D07', 'Human Resources', 'Hiring, training, payroll'),
('D08', 'Restaurant Partnerships', 'Vendor onboarding & management');

-- fetch
SELECT * FROM Departments;

CREATE TABLE Employees (
    Emp_ID VARCHAR(10) PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(10),
    Role VARCHAR(100),
    Experience INT,
    Salary INT,
    FOREIGN KEY (Department) REFERENCES Departments(Dept_ID)
);


INSERT INTO Employees (Emp_ID, Emp_Name, Department, Role, Experience, Salary) VALUES
('E101', 'Arjun Mehta', 'D01', 'Ops Executive', 2, 450000),
('E102', 'Priya Nair', 'D05', 'Software Engineer', 3, 1200000),
('E103', 'Rahul Singh', 'D02', 'Support Associate', 1, 320000),
('E104', 'Manish Gupta', 'D03', 'Rider Manager', 4, 680000),
('E105', 'Kavya Shah', 'D04', 'Digital Marketer', 2, 590000),
('E106', 'Esther John', 'D08', 'Partnership Manager', 2, 920000),
('E107', 'Aniket Verma', 'D06', 'Finance Analyst', 2, 610000),
('E108', 'Sneha Bose', 'D07', 'HR Executive', 3, 510000);


SELECT * from Employees;

CREATE TABLE Delivery_Partners (
    DP_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Zone VARCHAR(50),
    Average_Rating DECIMAL(2,1),
    Monthly_Orders INT,
    Monthly_Earnings INT
);

INSERT INTO Delivery_Partners
(DP_ID, Name, Zone, Average_Rating, Monthly_Orders, Monthly_Earnings)
VALUES
('DP01', 'Suresh Kumar', 'East Zone', 4.8, 310, 38000),
('DP02', 'Mani Prakash', 'South Zone', 4.5, 285, 34500),
('DP03', 'Gopal Singh', 'North Zone', 4.3, 270, 32000),
('DP04', 'Rafiq Shaikh', 'West Zone', 4.7, 305, 37200);

CREATE TABLE Restaurants (
    Restaurant_ID VARCHAR(10) PRIMARY KEY,
    Restaurant_Name VARCHAR(100),
    Partner_Name VARCHAR(100),
    City VARCHAR(50),
    Commission_Percent INT
);

INSERT INTO Restaurants
(Restaurant_ID, Restaurant_Name, Partner_Name, City, Commission_Percent)
VALUES
('R501', 'Biryani Express', 'Esther John', 'Mumbai', 22),
('R504', 'Pizza Palace', 'Esther John', 'Bengaluru', 18),
('R512', 'Delhi Tadka', 'Manish Gupta', 'Delhi', 20),
('R498', 'Fresh Meals', 'Manish Gupta', 'Hyderabad', 25);


CREATE TABLE Orders (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Restaurant_ID VARCHAR(10),
    Order_Amount INT,
    Delivery_Time INT,
    Status VARCHAR(20),
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurants(Restaurant_ID)
);

INSERT INTO Orders
(Order_ID, Customer_ID, Restaurant_ID, Order_Amount, Delivery_Time, Status)
VALUES
('O9001', 'C101', 'R501', 340, 31, 'Delivered'),
('O9002', 'C102', 'R504', 180, 26, 'Delivered'),
('O9003', 'C103', 'R512', 420, 48, 'Delayed'),
('O9004', 'C108', 'R498', 290, 34, 'Delivered');


SELECT * from Delivery_Partners;

SELECT * from Orders;

SELECT * from Restaurants;