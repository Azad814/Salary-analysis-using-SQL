use data_new;
select * from salaries;
select EmployeeName, JobTitle from salaries;
select count(1) from salaries;
-- show unique job titles in the table 
select distinct JobTitle from salaries; 
select JobTitle, OvertimePay from salaries where OvertimePay>50000;
select avg(BasePay) from salaries;
select EmployeeName, TotalPay from salaries order by TotalPay desc limit 10; 
select EmployeeName, (BasePay+ OvertimePay+ OtherPay)/3  as average from salaries; 
select EmployeeName, JobTitle from salaries where JobTitle like '%Manager%';
select EmployeeName, JobTitle from salaries where JobTitle <> '%Manager%';
select * from salaries where TotalPay between 50000 and 75000;
select * from salaries where BasePay<50000 or TotalPay >100000;
select * from salaries where TotalPayBenefits between 125000 and 150000 and JobTitle like '%Director%';
select * from salaries order by TotalPayBenefits desc;
select JobTitle , avg(BasePay) from salaries group by JobTitle having avg(BasePay)>=100000;
alter table salaries drop column notes;
select * from salaries;
update salaries set BasePay= BasePay*1.1 where JobTitle like '%Manager%';
select * from salaries;
delete from salaries where OvertimePay =0;
select * from salaries where OvertimePay=0;
delete from salaries where OvertimePay =0;
SET SQL_SAFE_UPDATES = 0;
delete from salaries where OvertimePay =0;
select count(*) from salaries where OvertimePay=0;
SET SQL_SAFE_UPDATES = 1;
