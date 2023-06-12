# Crowdfunding_ETL

### Description
Utilizing the provided excel data, complete the ETL process to transform the data and move it into a SQL database

### Extract
- Data sets were provided in Excel documents (found in the original_data folder)
- The data is read into Pandas DataFrames using pd.read_excel() (found in main.ipynb file)

### Transform
- The crowdfunding.xlsx data was split and transformed into three DataFrames saved to csv files (located in the transformed_data folder: campaign.csv, category.csv, and subcategory.csv)
transforming it into four usable DataFrames is in the file: main.ipynb
- The contacts.xlsx data was extracted using **RegEx** in order to make the data more functional for analysis and visualizations (located in the transformed_data folder: contacts.csv)

### Load
- ERD for the table schema can be viewed here: Data_Model.png
- PostreSQL code to load and confirm the database is in the file: crowdfunding_db_schema.sql
