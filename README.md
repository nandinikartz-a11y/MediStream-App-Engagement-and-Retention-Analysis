# MediStream Retention Analysis

## Project Overview

This project analyzes user activity and subscription data for MediStream to understand user retention, identify churn risk, and provide business recommendations using Python, SQL, and Power BI.

## Objectives

- Analyze user engagement patterns
- Calculate retention and churn metrics
- Build a churn prediction model
- Visualize KPIs using Power BI
- Identify high-risk users for retention campaigns

## Tools Used

- Python (Pandas, NumPy, Matplotlib, Scikit-learn)
- SQL
- Power BI
- GitHub

## Dataset

The project uses synthetic datasets:

- Users
- ActivityLogs
- Subscription

These datasets contain user information, feature usage, login history, and subscription renewal status.

---

## Project Workflow

### Data Preparation
- Cleaned missing values
- Regenerated ActivityLogs and Subscription datasets
- Converted dates into datetime format
- Engineered new features

### SQL Analysis
- Login frequency analysis
- Session duration analysis
- Feature usage counts
- User retention metrics

### Python Analysis
- Correlation analysis
- Feature engineering
- Logistic Regression churn model
- Churn probability prediction
- Risk flag generation
- Retention discount logic

### Power BI Dashboard
- Total Users KPI
- Retention Rate KPI
- Average Churn Probability
- Subscription Tier Distribution
- Feature Usage by Segment
- MAU/DAU Trend
- Retention Cohort
- Interactive slicers

---

# Business Insights

- Premium users showed higher engagement than Free users.
- Symptom Check and Lab View were among the most frequently used features.
- Users with lower login frequency were more likely to churn.
- Churn prediction enables proactive identification of at-risk users.
- Personalized retention offers can improve subscription renewals.
- Interactive dashboards help monitor user behavior and business KPIs in real time.

---

# Future Improvements

- Use real production data.
- Train advanced machine learning models such as Random Forest or XGBoost.
- Build automated email notifications for high-risk users.
- Deploy the model using a web application or API.

---

# Conclusion

This project demonstrates an end-to-end retention analysis workflow using SQL, Python, and Power BI. The developed dashboard and churn prediction model provide actionable insights that can help MediStream improve customer retention and support data-driven business decisions.
