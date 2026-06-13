Create database MediStream;
create table users (
UserID int primary key,
SignupDate date,
Segment varchar (20)
)
create table ActivityLogs (
LogID int primary key,
UserID int,
Action varchar (30),
Timestamp Datetime
)
select distinct UserID, Timestamp from ActivityLogs
order by UserID, Timestamp;

select Action, count(*) as count from ActivityLogs
WHERE Action IN ('Symptom_Check', 'Lab_View')
group by Action
;

#Develop SQL Window Function for Month 0 vs Month 1 activity

select year(timestamp) as year,
month(timestamp) as month,
count(distinct userid) as mau
from activitylogs
group by year(timestamp),
month(timestamp)
order by year, month;

#Generate User Retention Cohort grid raw data
    
select userid, min(timestamp) as firstactivity
from activitylogs
group by userid;