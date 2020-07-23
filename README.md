# Unit-09-SQL-challenge

<img src="/Resources/Images/download.jpg" width="720">
Using SQL to create company employee data model system.

## Data Modeling
With the help of quick database diagram (http://www.quickdatabasediagrams.com), we designed and drew the schematic data modeling for the HP employee data model system. Below is the ERD data schema for the tables of HP employees.
<img src="/Resources/Images/ERD.png" width="720">

## Data Engineering
Based on the schema, My SQL file created 6 tables based on the csv files. We then filled them by exporting the csv data
The data base is called "table schemata.sql"


## Data Analysis
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


