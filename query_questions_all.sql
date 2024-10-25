create schema car_dekho
use car_dekho;
 -- Q.1) Total cars to get a count of total records--
 select count(*) from car_dekho;
 select count(*) from car_dekho.car_dekho;
  -- Q.2) the manager asked the employee how many cars will be available in 2023--
   select count(*) from car_dekho.car_dekho where 2023;
-- Q.3)The manager asked the employee how many cars will be available in 2020,2021,2022--
select count(*) from car_dekho.car_dekho where year = 2020 ;
select count(*) from car_dekho.car_dekho where year = 2021 ;
select count(*) from car_dekho.car_dekho where year =2022 ;
      or
select count(*) from car_dekho.car_dekho where year  in (2021,2020,2022) group by year;


-- Q.3)client asked to me to print the total of all cars by year. i dont see all the detail--
select year, count(*) from car_dekho.car_dekho group by year;

-- Q.4)client asked to car dealers agent how many diesel cars will there is in 2020 --

SELECT count(*) FROM car_dekho.car_dekho where year = 2020 and fuel = "Diesel";

-- Q.5)alient request a car dealer agent how many petrol cars will there in 2020--
SELECT count(*) FROM car_dekho.car_dekho where year = 2020 and fuel = "Petrol";

-- Q.6) the manager told to employee to give a print all the fuel cars(petrol,diesel & CNG) come by all year --
select year, count(*) from car_dekho.car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho.car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho.car_dekho where fuel="CNG" group by year;

-- Q.7)Manager said there wew more than 100 cars in a given year , which year had more than 100 cars --
 select year, count(*) from car_dekho.car_dekho group by year having count(*)>100;
 select year, count(*) from car_dekho.car_dekho group by year having count(*)>100;
 
 -- Q.8)Manager said to the employee all cars count details between 2015 and 2023 , we need a complete list--
 SELECT count(*) FROM car_dekho.car_dekho where year between 2015 and 2023;

 
  -- Q.9)Manager said to the employee all cars details between 2015 and 2023 , we need a complete list--
 SELECT * FROM car_dekho.car_dekho where year between 2015 and 2023;
 

 
