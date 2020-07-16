-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/e2ECHV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS employees_tb;
DROP TABLE IF EXISTS department_tb;
DROP TABLE IF EXISTS dept_employee_tb;
DROP TABLE IF EXISTS dept_manager_tb;
DROP TABLE IF EXISTS salary_tb;
DROP TABLE IF EXISTS title_tb;

CREATE TABLE "employees_tb" (
    "empl_no" INT   NOT NULL,
    "title_id" VARCHAR(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_Date" DATE   NOT NULL,
    CONSTRAINT "pk_employees_tb" PRIMARY KEY (
        "empl_no"
     )
);

CREATE TABLE "title_tb" (
    "title_id" VARCHAR(5)   NOT NULL,
    "title_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_title_tb" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "department_tb" (
    "dept_no" VARCHAR(5)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_department_tb" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_employee_tb" (
    "empl_no" INT   NOT NULL,
    "dept_no" VARCHAR(5)   NOT NULL,
    CONSTRAINT "pk_dept_employee_tb" PRIMARY KEY (
        "empl_no","dept_no"
     )
);

CREATE TABLE "dept_manager_tb" (
    "dept_no" VARCHAR(5)   NOT NULL,
    "empl_no" INT   NOT NULL,
    CONSTRAINT "pk_dept_manager_tb" PRIMARY KEY (
        "dept_no","empl_no"
     )
);

CREATE TABLE "salary_tb" (
    "empl_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salary_tb" PRIMARY KEY (
        "empl_no"
     )
);

ALTER TABLE "employees_tb" ADD CONSTRAINT "fk_employees_tb_title_id" FOREIGN KEY("title_id")
REFERENCES "title_tb" ("title_id");

ALTER TABLE "dept_employee_tb" ADD CONSTRAINT "fk_dept_employee_tb_empl_no" FOREIGN KEY("empl_no")
REFERENCES "employees_tb" ("empl_no");

ALTER TABLE "dept_employee_tb" ADD CONSTRAINT "fk_dept_employee_tb_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department_tb" ("dept_no");

ALTER TABLE "dept_manager_tb" ADD CONSTRAINT "fk_dept_manager_tb_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department_tb" ("dept_no");

ALTER TABLE "dept_manager_tb" ADD CONSTRAINT "fk_dept_manager_tb_empl_no" FOREIGN KEY("empl_no")
REFERENCES "employees_tb" ("empl_no");

ALTER TABLE "salary_tb" ADD CONSTRAINT "fk_salary_tb_empl_no" FOREIGN KEY("empl_no")
REFERENCES "employees_tb" ("empl_no");

