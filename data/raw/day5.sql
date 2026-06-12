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

select UserID, count(*) as ActivityCount from ActivityLogs
group by UserID
order by ActivityCount desc;