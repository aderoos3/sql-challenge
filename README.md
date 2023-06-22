# sql-challenge
## SQL Introduction

The goal of this project was to use sql to analyze data for employees of a fictional company. First, a ERD was made to understand the relationships between all the different csv files. I started by looking at all the csv files and figuring out the relationships between them. It was a little tough to figure out all the primary keys, but I think I got it. Then I uploaded a screenshot of just the tables and a screenshot of the tables with the code. 

Then the csv files needed to be added to Postgres. First, a guide was made using sql so all the csv files could be added correctly. I coded all the tables with all the columns into Postgres. Then all the csv files with the data could be added. I had to add the files in a specific order. All the files with primary keys needs to go first. Based on the examples from class I think I correctly did all the foreign keys, but I'm not sure. It didn't seem like there was a need for a junction table, so that's why I created the tables in the way shown in the file.

For the data analysis section, I used the tables I had made to analyze the data in different ways. I used inner joins, group bys, and filtering to find different information in the data. Using the inner joins, sometimes I needed two joins. These were connected with one of the dept_emp table because it had the primary key for two tables. For the group by, this determined the frequency of a specific piece of data. Finally, for the filtering, this helped to filter data based on last name or a specific department or something else. 
