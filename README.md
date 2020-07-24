# Unit-09-SQL-challenge

<img src="/Resources/Images/download.jpg" width="720">
Using SQL to create company employee data model system.

## Data Modeling
Conceptual schema


Logical schema: describes the structure of some domain of information. This consists of descriptions of (for example) tables, columns, object-oriented classes, and XML tags. The logical schema and conceptual schema are sometimes implemented as one and the same.

The logical data modeling for the HP employee data model system is designed with the help of quick database diagram (http://www.quickdatabasediagrams.com). Tables are created with their basic information, then primary keys are asiigned, and relationships (secondary keys) are defined.<br/>
Below is the ERD data schema for the tables of HP employees.<br/>
<img src="/Resources/Images/ERD.png" width="720">


## Data Engineering
Physical schema: describes the physical means used to store data. This is concerned with partitions, CPUs, tablespaces, and the like.
By using the available information a table schema for each of the six CSV files was created, and the data types, primary keys, foreign keys, and constraints also developed. The order of the table is based on the primary, and foreign arrangements. 

Click the following link to see the actual schema file[sql_table_schemata.sql](https://github.com/vivisantosa/Unit-09-SQL-challenge/blob/master/sql_table_schemata.sql)

Based on the schema, My SQL file created 6 tables based on the csv files. We then filled them by exporting the csv data
The data base is called "table schemata.sql"


## Data Analysis
(https://github.com/vivisantosa/Unit-09-SQL-challenge/blob/master/sql_queries.sql)
My SQL file to answer the questions below is "queries.sql"
- List the following details of each employee: employee number, last name, first name, sex, and salary. 
- List first name, last name, and hire date for employees who were hired in 1986.
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
- List the department of each employee with the following information: employee number, last name, first name, and department name.
- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
- List all employees in the Sales department, including their employee number, last name, first name, and department name.
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Data Testing and Validation with Python (Optional Bonus) 
To visualize the data, we use Jupyer notebook ("SQL homework.ipynb") to create graphs of salaries,
- Import the SQL database into Pandas. 
- Create a histogram to visualize the most common salary ranges for employees.
<img src="/Resources/Images/Histogram.png" width="480">
- Create a bar chart of average salary by title.
<img src="/Resources/Images/barchart.png" width="480"> <br>


![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)


