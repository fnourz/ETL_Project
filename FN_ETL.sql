USE leading_causes_of_death_db;

#selected top 10 from CDI that was loaded into database from jupyter notebook, exported each table
#already have top ten causes of death dont on jupyter notebook

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

#exported each table and reuploaded into database, there has to be an easier way of doing this, exported and saved each table

SELECT * FROM  leadingcauses_2013

SELECT * FROM  cdi_2013_top10


#joining leading causes and leading indicators for all years

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
