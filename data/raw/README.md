MediStream SQL Project

# Database Creation

Created the MediStream database and tables for users, subscriptions, and activity logs.

# User Activity Analysis

* Counted Symptom_Check and Lab_View events.
* Calculated Monthly Active Users (MAU).
* Found each user's first activity date for cohort analysis.
* Calculated average session duration using the LEAD function.

# Subscription Analysis

* Calculated monthly revenue by plan type.
* Calculated total subscription revenue.

# Feature Engineering

* Counted total activities performed by each user.
* Created a feature_matrix view containing user activity counts.


# Export for Python

Created the feature_matrix view and exported it as `feature_matrix.csv` for Python analysis and machine learning.
