-- To create this database I need to create tables first then import data
-- The tables that come first have primary keys but no foreign keys
-- Each foreign key has to be declared as a primary key first

--Table 1 - titles - 1 data field, 1 primary key
CREATE TABLE titles (title_id VARCHAR(5) PRIMARY KEY NOT NULL, title VARCHAR(30));

--Table 2 - employees - 1 primary key - 1 foreign key, 5 data values
-- the .csv for this table was edited in Excel so that dates match the SQL format of YYYY-MM-DD
CREATE TABLE employees (emp_no INT PRIMARY KEY NOT NULL, 
					   emp_title VARCHAR(5),
					   birth_date DATE, 
					   first_name VARCHAR(20),
					   last_name VARCHAR(30),
					   sex CHAR, 
					   hire_date DATE,
					   FOREIGN KEY (emp_title) REFERENCES titles (title_id));

--Table 3 - salaries - 1 foreign key, 1 data column
CREATE TABLE salaries (emp_no INT NOT NULL, salary INT, 
					  FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

--Table 4 - departments - 1 primary key, 1 data column
CREATE TABLE departments (dept_no VARCHAR(4) PRIMARY KEY NOT NULL, 
						 dept_name VARCHAR(40));

--Table 5 - dept_manager - 2 foreign keys, composite primary key
CREATE TABLE dept_manager (dept_no VARCHAR(4) NOT NULL, emp_no INT NOT NULL,
						  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
						  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
						  PRIMARY KEY (dept_no, emp_no));

--Table 6 - dept_emp - 2 foreign keys, composite primary key
CREATE TABLE dept_emp (emp_no INT NOT NULL, dept_no VARCHAR(4) NOT NULL,
					  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
					  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
					 PRIMARY KEY (dept_no, emp_no));
