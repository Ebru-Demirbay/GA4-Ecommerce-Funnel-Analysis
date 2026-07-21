📊 GA4 E-commerce Funnel Analysis

# Project Overview

This project analyzes the Google Analytics 4 (GA4) Public E-commerce Dataset to understand user behavior throughout the online purchase journey.

Using SQL in Google BigQuery, event-level data was transformed into a structured purchase funnel to evaluate user progression from session start to completed purchase.

The analysis focuses on conversion rates, user drop-offs, and behavioral differences across traffic sources, devices, and other user segments.

The results are presented through an interactive Tableau dashboard to provide actionable insights for improving e-commerce conversion performance.



## 🎯 Business Problem

E-commerce businesses need to understand how users move through the purchasing journey and identify the stages where potential customers leave the funnel.

This project aims to analyze user behavior across different funnel stages and answer key business questions:

- Where do users drop off during the purchase process?
- What is the overall conversion rate from session to purchase?
- Which traffic sources contribute the most to purchases?
- How do user behaviors differ across devices and geographic locations?
  

### 📂 Dataset

The analysis uses the Google Analytics 4 (GA4) Public E-commerce Dataset available in Google BigQuery.

The dataset contains event-level web analytics data that captures user interactions throughout the online shopping journey.

Dataset details:
- Source: Google BigQuery Public Dataset
- Data type: GA4 event data
- Analysis period: 92 days of e-commerce activity

Key events analyzed:
- session_start
- view_item
- add_to_cart
- begin_checkout
- add_shipping_info
- add_payment_info
- purchase


#### 🛠️ Tools & Technologies

The following tools and technologies were used throughout the project:

- **SQL** – Data extraction, transformation, and funnel analysis
- **Google BigQuery** – Querying and processing the GA4 public dataset
- **Tableau** – Interactive dashboard development and data visualization
- **Google Analytics 4 (GA4) Dataset** – Source of e-commerce event data
