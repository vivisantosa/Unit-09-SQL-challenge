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
Using 'quick database diagram', codes for creating the 6 tables are generated. The codes were transfered to sql, edited, and is used to generate the tables. 
Click the following link to see the file : [sql_table_schemata.sql](https://github.com/vivisantosa/Unit-09-SQL-challenge/blob/master/sql_table_schemata.sql)

The tables then populated with import procedure from the original 6 csv tables.

## Data Analysis
The data then being analyzed with [sql_queries.sql](https://github.com/vivisantosa/Unit-09-SQL-challenge/blob/master/sql_queries.sql) file.<br>
My SQL file to answer the questions below is "queries.sql"
- List the following details of each employee: employee number, last name, first name, sex, and salary. 
```SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;
   ```
   <img src="/Resources/Images/Screenshot (112).png" width="480">
   
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

In this part I provide an evidence for any one who asked to "Search an Id" from the database, for example let seacrh employee ID number 499942 and It looks as follows the search result in pandas. 

## : Epiloque :

The queries in [sql_epilogue.sql](https://github.com/vivisantosa/Unit-09-SQL-challenge/blob/master/sql_epilogue.sql) produce this result

-- how to make table --

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>emp_no</th>
      <th>emp_title_id</th>
      <th>birth_date</th>
      <th>first_name</th>
      <th>last_name</th>
      <th>sex</th>
      <th>hire_date</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>499942</td>
      <td>e0004</td>
      <td>1963-01-10</td>
      <td>April</td>
      <td>Foolsday</td>
      <td>F</td>
      <td>1997-02-10</td>
    </tr>
  </tbody>
</table>


![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)

### Copyright

