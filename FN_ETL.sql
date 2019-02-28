USE leading_causes_of_death_db;

#Below we cleaned the disease prevalence datasets for each year to show only the top 10 disease prevalence
# in that given year. These tables were then exported as a CSV and added into the MySQL database using the 
#Table Export Wizard.

SELECT *
FROM CDI_2013
ORDER BY DataValue DESC
LIMIT 10;

SELECT *
FROM CDI_2014
ORDER BY DataValue DESC
LIMIT 10;

SELECT *
FROM CDI_2015
ORDER BY DataValue DESC
LIMIT 10;

SELECT *
FROM CDI_2016
ORDER BY DataValue DESC
LIMIT 10;



SELECT * FROM  leadingcauses_2013

SELECT * FROM  cdi_2013_top10


#Once we cleaned up the dataset with the disease prevalence to only show the top ten disease indicators in the United 
#States we are able to join and compare. This allows us to then be able to view the top ten disease indicators 
#with the top ten causes of death. The values in the disease indicators dataset are “topic” and “datavalue” which 
#is compared to the values in the causes of death dataset which are “cause_name” and “deaths”.


#Now that tables are created for top leading causes of death and top chronic diseases are created, 
#we joined both tables to observe a side by side perspective. We also had to create a primary key 
#for each table to allow for a join to occur. Now we are able to see how the top 10 leading causes of death 
#in the United States compare with the top 10 diseases in the United States for a given year. 



#joining leading death causes and leading disease indicators for all years

SELECT  leadingcauses_2013.cause_name, leadingcauses_2013.deaths, cdi_2013_top10.topic, cdi_2013_top10.DataValue
FROM leadingcauses_2013 
RIGHT JOIN cdi_2013_top10 ON leadingcauses_2013.id = cdi_2013_top10.id ;

ALTER TABLE leadingcauses_2013 
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

ALTER TABLE cdi_2013_top10
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;



ALTER TABLE leadingcauses_2014 
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

ALTER TABLE cdi_2014_top10
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

SELECT  leadingcauses_2014.cause_name, leadingcauses_2014.deaths, cdi_2014_top10.topic, cdi_2014_top10.DataValue
FROM leadingcauses_2014 
RIGHT JOIN cdi_2014_top10 ON leadingcauses_2014.id = cdi_2014_top10.id ;


ALTER TABLE leadingcauses_2015 
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

ALTER TABLE cdi_2015_top10
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

SELECT  leadingcauses_2015.cause_name, leadingcauses_2015.deaths, cdi_2015_top10.topic, cdi_2015_top10.DataValue
FROM leadingcauses_2015 
RIGHT JOIN cdi_2015_top10 ON leadingcauses_2015.id = cdi_2015_top10.id ;




ALTER TABLE leadingcauses_2016 
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

ALTER TABLE cdi_2016_top10
ADD COLUMN `id` INT(10) unsigned primary KEY AUTO_INCREMENT;

SELECT  leadingcauses_2016.cause_name, leadingcauses_2016.deaths, cdi_2016_top10.topic, cdi_2016_top10.DataValue
FROM leadingcauses_2016 
RIGHT JOIN cdi_2016_top10 ON leadingcauses_2016.id = cdi_2016_top10.id ;

#See folders in main branch to view tables that were created (folders are named Cause of Death and CDI (which is the information
#for disease prevalance, to show tables for top 10 of each cause of death and disease, as well as the joined tables)                                                                                                        

