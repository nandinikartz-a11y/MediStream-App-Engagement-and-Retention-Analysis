Create database MediStream;
create table users (
UserID int primary key,
SignupDate date,
Segment varchar (20)
)
create table Subscription (
UserID int,
PlanType varchar (30),
Renewed int,
Revenue int,
SubscriptionMonth int
)

create table Subscription (
UserID int,

Action varchar (30),
Timestamp Datetime
)

subscriptioncreate table Subscription (
UserID int primary key,
PlanType varchar (30),
Renewed int
);
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

#Calculate Average Session Duration using LAG/LEAD functions

select userid, timestamp as login_time, lead(timestamp) over (
        partition by userid
        order by timestamp
    ) as next_time
from activitylogs;
#to get average duration
select avg(timestampdiff(minute, timestamp, lead(timestamp) over (
                partition by userid
                order by timestamp
            ))) as avg_session_duration
from activitylogs;

#Summarize monthly Subscription revenue by PlanType
select subscriptionmonth as month, plantype, sum(revenue) as total_revenue
from subscription
group by subscriptionmonth, plantype
order by subscriptionmonth, plantype;

#Validate SQL output against business requirements
#1Calculate monthly revenue by plan type.
select subscriptionmonth as month, plantype, sum(revenue) as total_revenue
from subscription
group by subscriptionmonth, plantype
order by subscriptionmonth, plantype;

#2total revenue
select sum(revenue) as total_revenue
from subscription;

#aggregating activity counts per user for python modeling
select userid, count(*) as activity_count
from activitylogs
group by userid;

#export sql view as feature_matrix.csv
create view feature_matrix as
select userid, count(*) as activity_count
from activitylogs
group by userid;

select * from feature_matrix;
