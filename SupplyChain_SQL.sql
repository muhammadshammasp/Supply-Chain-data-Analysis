create database Project_3;
use Project_3;
select* from manufacturing_data;

-- KPI 01; MANUFACTURE QUANTITY
select  sum(`today Manufactured qty`)as "manufactured_quantity" from manufacturing_data ;

-- KPI 02; REJECTED QUANTITY
select sum(`Rejected Qty`) as Rejected_Quantity from manufacturing_data;

-- KPI 03; PROCESSED QUANTITY
select sum(`Processed Qty`) as Produced_Quantity from manufacturing_data;

-- KPI 04; WASTAGE QUANTITY
select sum(`Produced Qty`)- sum(`Processed Qty`) as wastage_Quantity from manufacturing_data;

-- KPI 05; EMPLOYEE WISE REJECTED QUANTITY
select `Emp Name`,sum(`Rejected Qty`) as Rejected_Quantity from manufacturing_data group by `Emp Name` order by `Emp Name`desc ;

-- KPI 06: MACHINE WISE REJECTED QUANTITY
select `Machine Code`, sum(`Rejected Qty`) as Rejected_Quantity from manufacturing_data group by `Machine Code` order by `Machine Code` desc;

-- KPI 07 : PRODUCTION COMPARISION TREND
select sum(`today Manufactured qty`)as Manufactured_Quantity,
sum(`Processed Qty`)as Processed_Quantity,
sum(`Produced Qty`)as produced_quantity,
sum(`Rejected Qty`)as Rejected_quantity from manufacturing_data;

-- KPI 08: MANUFACTURE VS REJECTED QUANTITY
select sum(`today Manufactured qty`)as Manufactured_Quantity, sum(`Rejected Qty`) as Rejected_Quantity from manufacturing_data;

-- KPI 09: DEPARTMENT WISE MANUFACTURE VS REJECTED QUANTITY
select `Department Name`,sum(`today Manufactured qty`) as manufactured_Quantity, sum(`Rejected Qty`)as Rejected_quantity 
from manufacturing_data group by `Department Name` order by `Department Name`desc;
