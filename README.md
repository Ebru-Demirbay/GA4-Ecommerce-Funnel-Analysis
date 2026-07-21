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
  

## 📂 Dataset

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


## 🛠️ Tools & Technologies

The following tools and technologies were used throughout the project:

- **SQL** – Data extraction, transformation, and funnel analysis
- **Google BigQuery** – Querying and processing the GA4 public dataset
- **Tableau** – Interactive dashboard development and data visualization
- **Google Analytics 4 (GA4) Dataset** – Source of e-commerce event data

## 🔍 Project Workflow

The project followed a structured data analysis workflow:

1. **Data Exploration**
   - Explored the GA4 event-level dataset and identified relevant user interaction events.

2. **Data Preparation**
   - Processed raw event data using SQL in Google BigQuery.
   - Created session-level analysis by combining user and session identifiers.
   - Prepared the dataset required for funnel analysis.

3. **Funnel Analysis**
   - Built the e-commerce purchase funnel using key user journey events:
     - session_start
     - view_item
     - add_to_cart
     - begin_checkout
     - add_shipping_info
     - add_payment_info
     - purchase

4. **Conversion Analysis**
   - Calculated conversion rates between funnel stages.
   - Analyzed user drop-offs throughout the purchasing journey.

5. **Dashboard Development**
   - Created an interactive Tableau dashboard to visualize funnel performance and user behavior across different segments.
  

## 📊 Dashboard

An interactive Tableau dashboard was developed to visualize e-commerce funnel performance and user behavior.

The dashboard provides insights into:

- User progression through the purchase funnel
- Conversion rates between funnel stages
- Revenue performance
- Traffic source analysis
- User behavior across different devices and geographic segments

Dashboard screenshots and Tableau visualizations will be added to this section.


## 💡 Key Insights

The analysis provided insights into customer behavior and conversion performance throughout the e-commerce funnel.

Key findings include:

- Identified the main drop-off points throughout the purchase journey.
- Evaluated conversion rates between different funnel stages.
- Analyzed how traffic sources and user segments influence purchasing behavior.
- Compared user behavior across device categories and geographic locations.
