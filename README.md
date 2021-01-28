*** HP Database Challenge ***

This repo contains the code I used to solve a database exercise. The exercise was to use data from a fictional Hewlet Packard employment database to reconstruct
the database in PosgreSQL. The data comes in 6 .csv files, which were first modeled with an Entitly Relationship Diagram. I then use this ERD to write 
six tables using SQL, and import each csv file into the corresponding table. After this was finished, I wrote queries to answer 8 questions about the data
(these questions are reproduced in the comments of the queries). Finally connected to my database and uploaded it to a Jupyter notebook, which I used to 
visualize the data. 

***Files***

hp_db_erd_4.png  - This is a picture file of my ERD.

hp_db_construction.sql - This file contains the SQL commands to set up the database such that the connections visualized in the ERD are established.

hp_db_construction.sql - This file contains SQL queries which return the information requested by the questions (see the comments for the questions).

hp_db_analysis.ipynb  - This is the Jupyter Notebook I used for the final analysis and plots. 

data_files - This folder contains the 6 .csv files used in this exercise.
