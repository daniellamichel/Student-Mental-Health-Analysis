# 🧠 Student Mental Health & Academic Analysis

A statistical exploration of the relationship between university students' mental health and their academic performance. Using survey data from 59 students, this project analyzes key indicators like depression, anxiety, and panic attacks alongside CGPA and demographic data to identify critical wellness patterns.

## 📊 About the Project
#Statistics #RStats #MentalHealthAwareness #StudentSuccess

This R-based project uses the `mhealth.csv` dataset to bridge the gap between academic data and student wellness.

*   **Objective:** To determine if factors like age and gender correlate with mental health challenges and academic standing.
*   **Key Findings:** Identification of high-frequency CGPA ranges (3.5+) and a visualization of the "treatment gap" for students experiencing panic attacks.

## 🌟 Analysis Features
#DataViz #BehavioralAnalytics #AcademicTrends

📝 **Demographic Check:** Classifying variables into numerical (Age, CGPA) and categorical (Gender, Major, Depression) factors.
📈 **Correlation Study:** Scatter plots with **linear regression lines** examining how CGPA holds steady across age groups (18-24).
📊 **Academic Distribution:** Histogram analysis revealing the most frequent CGPA clusters (3.5 - 4.0).
👫 **Comparative Visuals:** 
    *   **Grouped Bar Charts:** Comparing Gender against Depression levels.
    *   **Stacked Bar Charts:** Highlighting the total volume of mental health reports by category.
💊 **Treatment Analysis:** Visualizing the disparity between students experiencing panic attacks and those seeking professional treatment.

## 🛠 Tech Stack
#TechStack #R #RStudio #DataAnalysis #ggplot

**Environment & Tools**
*   **Language:** R
*   **Libraries:** `datasets`, `base R graphics`
*   **Functions Used:** `lapply()`, `table()`, `barplot()`, `abline()`, `lm()`

**Metrics Tracked**
*   🎓 **CGPA:** Cumulative Grade Point Average.
*   🧠 **Depression/Anxiety:** Bi-weekly self-reported mental health status.
*   🏥 **Treatment:** Tracking help-seeking behavior among student respondents.

## 🎨 Visual Interpretation
#DataInsights #PreattentiveAttributes

*   **Preattentive Attributes:** The analysis utilizes **Color** (Pink/Cyan), **Position** (X-Y Axis), and **Length** (Bar Heights) to make health disparities immediately recognizable.
*   **Academic Insight:** The scatter plot shows that CGPA remains consistently high across the 18-24 age range, with a peak frequency in the 3.5+ range.
*   **Gender Trends:** Visual data suggests a slightly higher frequency of reported depression among female students compared to male students in this specific survey.
*   **The Treatment Gap:** Bar plots reveal a significant number of students do not receive treatment for panic disorders, highlighting a critical area for university support.

## 📂 Project Structure
```text
Student-Mental-Health-Analysis/
├── .gitignore          # Prevents Mac system files and .RData from syncing
├── README.md           # Project documentation
└── Lab 2/              
    ├── mhealth.csv     # Primary mental health survey dataset
    ├── students.csv    # Student demographic data
    └── Lab 2 Analysis.R # Full R script with plots and interpretation
```

## 📦 GitHub Stats
#OpenSource #RStats #StudentWellness

**Languages:** R 100%  
**Dataset Source:** University Student Mental Health Survey
