-- create campaign table and add data
CREATE TABLE campaign(
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(50),
    description VARCHAR(250),
    goal DECIMAL,
    pleged DECIMAL,
	outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL
);

COPY campaign(cf_id, contact_id, company_name, description, goal, pleged, outcome, backers_count, country, currency, launched_date, end_date, category_id, subcategory_id)
--NOTE: you may need to update the file path based on the location
FROM 'transformed_data/campaign.csv'
DELIMITER ','
CSV HEADER;

--test to make sure campaign has loaded correctly
SELECT *
FROM campaign;


--create contacts table and add data
CREATE TABLE contacts(
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);

COPY contacts(contact_id, first_name, last_name, email)
--NOTE: you may need to update the file path based on the location
FROM 'transformed_data/contacts.csv'
DELIMITER ','
CSV HEADER;

--test to make sure contacts has loaded correctly
SELECT *
FROM contacts;


--create category table and add data
CREATE TABLE category(
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
    category VARCHAR(20)
);

COPY category(category_id, category)
--NOTE: you may need to update the file path based on the location
FROM 'transformed_data/category.csv'
DELIMITER ','
CSV HEADER;

--test to make sure category has loaded correctly
SELECT *
FROM category;


--create category table and add data
CREATE TABLE subcategory(
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(50)
);

COPY subcategory(subcategory_id, subcategory)
--NOTE: you may need to update the file path based on the location
FROM 'transformed_data/subcategory.csv'
DELIMITER ','
CSV HEADER;

--test to make sure subcategory has loaded correctly
SELECT *
FROM subcategory;