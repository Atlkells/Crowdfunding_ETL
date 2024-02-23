-- Delete tables
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;



--- Create tables and import data --- 



--- contacts ---

-- Create new table: 
CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
); 

-- Verify successful data import: 
SELECT * FROM contacts;



--- category ---

-- Create new table: 
CREATE TABLE category (
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL
); 

-- Verify successful data import: 
SELECT * FROM category;



--- subcategory ---

-- Create new table: 
CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY NOT NULL,
	subcategory VARCHAR NOT NULL
);

-- Verify successful data import: 
SELECT * FROM subcategory;
 



--- campaign ---

-- Create new table: 
CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Verify successful data import: 
SELECT * FROM campaign;





--- dept_manager ---

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table: 
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
); 

-- Verify successful data import: 
SELECT * FROM dept_manager;




--- salaries ---

-- Drop table if exists


-- Create new table: 
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
); 

-- Verify successful data import: 
SELECT * FROM salaries;











