# 📊 Customer Churn Prediction

End-to-end **Customer Churn Prediction** project using **SQL, Python, and Tableau**.  
The goal is to identify customers at high risk of churn using behavioral analytics and machine learning.

---

## 🚀 Project Overview

Customer churn is one of the most critical business problems.  
In this project we:

- Built customer behavioral features using **SQL**
- Trained a **Machine Learning churn model**
- Calculated **churn probability & risk segmentation**
- Identified key churn drivers using **feature importance**
- Built a **Tableau business dashboard**

---

## 🧰 Tech Stack

- **SQL** → Feature engineering  
- **Python (Scikit-Learn)** → Logistic Regression model  
- **Pandas / NumPy** → Data processing  
- **Tableau** → Business dashboard & visualization  

---

## ⚙️ Workflow

1. **SQL — Customer Feature Engineering**
   - Total orders
   - Total revenue
   - Average order value
   - Days since last purchase

2. **Python — Churn Model**
   - Logistic Regression
   - Churn probability prediction
   - Risk segmentation (High / Low)

3. **Model Explainability**
   - Feature importance
   - Permutation importance

4. **Tableau Dashboard**
   - Risk distribution
   - Churn probability distribution
   - KPI metrics

---

## 📈 Key Insight

The strongest predictor of churn is:

> **Customer inactivity (days_since_last_purchase)**

Customers who stop purchasing for long periods are significantly more likely to churn.

---

## 💼 Business Value

- Identify high-risk customers early  
- Enable targeted retention campaigns  
- Monitor behavioral churn signals  
- Improve customer lifetime value  

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `churn_sql.sql` | SQL feature engineering |
| `churn_model.ipynb` | Machine learning model |
| `churn_predictions.csv` | Model predictions |

---

## 📊 Tableau Dashboard

*(Add dashboard screenshot below)*

![Churn Dashboard](images/dashboard.png)
[
](https://public.tableau.com/app/profile/nikolaos.giannoulis/viz/CustomerChurnDashboard_17713687620020/CustomerChurnRiskDashboard#1)---

## 🔮 Future Improvements

- Add more behavioral features  
- Try advanced models (XGBoost / Random Forest)  
- Deploy model as API  
- Automate pipeline  
