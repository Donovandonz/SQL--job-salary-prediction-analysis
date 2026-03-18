# SQL--job-salary-prediction-analysis
💰 Job Salary Prediction Analysis

---

## Dataset used
-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/job_salary_prediction_dataset.csv">RAW.job-salary-prediction-dataset</a>

---

## 📋 Project Overview
This project analyzes job salary data to identify key factors influencing compensation and build predictive insights using MySQL, with assistance from DeepSeek AI for query optimization and analysis guidance.

---

## 🛠️ Tools & Technologies Used

### Database & Querying
- **MySQL 8.0**: Primary tool for data analysis and querying
- **MySQL Workbench**: Database management and visualization

### AI Assistance
- **DeepSeek AI**: 
  - Query optimization and performance tuning
  - Complex SQL query generation
  - Data analysis methodology guidance
  - Statistical insights and interpretation
  - Code documentation and best practices
 
---

## 🎯 Objectives
- Identify salary patterns across different job titles
- Analyze impact of experience, education, and skills on salary
- Understand geographic and industry variations in compensation
- Build foundation for salary prediction modeling

## 📊 Dataset Description
The dataset includes the following features:
- **job_title**: Position title/role
- **experience_years**: Years of professional experience
- **education_level**: Highest education attained
- **skills_count**: Number of relevant skills
- **industry**: Industry sector
- **company_size**: Organization size (Small/Medium/Large)
- **location**: Geographic location
- **remote_work**: Remote work availability
- **certifications**: Number of professional certifications
- **salary**: Annual compensation (target variable)

## 🔍 Key Analysis Performed

### 1. Exploratory Data Analysis
- Salary distribution analysis
- Missing value identification
- Outlier detection

### 2. Feature Impact Analysis
- Experience vs Salary correlation
- Education premium analysis
- Skills count impact
- Geographic salary variations

### 3. Statistical Insights
- Industry-wise compensation benchmarks
- Company size impact on salaries
- Remote work premium analysis

---

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|:--:|----------|----------|
| 1 | Check total records and basic statistics? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/01_total_records_and_statistic.sql">SQL-query</a> |
| 2 | Average salary by job title with count of positions? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/02_avg_salry_by_job_title.sql">SQL-query</a> |
| 3 | Salary progression with experience? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/03_salary_progression_with_experience.sql">SQL-query</a> |
| 4 | Salary by education level? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/04_salary_by_education_level.sql">SQL-query</a> |
| 5 | Salary analysis by location and remote work? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/05_salary_analysis_location_and_remote_work.sql">SQL-query</a> |
| 6 | Industry-wise salary analysis? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/06_industry_salary_analysis.sql">SQL-query</a> |
| 7 | Correlation between skills count and salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/07_correlation_between_skillscount_and_salary.sql">SQL-query</a> |
| 8 | Salary by company size? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/08_salary_by_company_size.sql">SQL-query</a> |
| 9 | Certification impact on salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/09_certifications_impact_on_salary.sql">SQL-query</a> |
| 10 | Combined factors affecting salary? |-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/10_combined_factors_affecting_salary.sql">SQL-query</a> |


---
### 1. Basic Statistics Summary

<img width="575" height="51" alt="Screenshot 2026-03-18 113354" src="https://github.com/user-attachments/assets/07fbb3e6-f6d8-4676-bb90-0d568ccd6ab3" />

### 📈 Key Metrics

| Metric | Value | Interpretation |
|--------|-------|----------------|
| **Total Records** | 5,843 | Robust sample size for analysis |
| **Unique Job Titles** | 12 | Moderate diversity (~487 records per title) |
| **Minimum Salary** | $41,404 | Entry-level positions |
| **Maximum Salary** | $309,091 | Executive/Senior roles |
| **Average Salary** | $145,558 | Above national average |
| **Standard Deviation** | $37,400 | Moderate dispersion |

### 📊 Statistical Insights

#### **Salary Range Analysis**
- **Total Spread**: $267,687
- **Range Ratio** (Max/Min): 7.47x
- **Interpretation**: Healthy salary progression from entry to senior levels

---

### 2. 💼 Job Title Analysis: Key Findings

<img width="556" height="283" alt="Screenshot 2026-03-18 113816" src="https://github.com/user-attachments/assets/556ff764-da82-475a-91ba-cf1f94423bdf" />

## 🏆 **Top 3 Highest Paying Roles**
| Rank | Job Title | Avg Salary | Premium vs Average |
|------|-----------|------------|-------------------|
| 1 | **AI Engineer** | $172,476 | +18.5% |
| 2 | **ML Engineer** | $165,169 | +13.5% |
| 3 | **Product Manager** | $156,266 | +7.4% |

*Overall Average: $145,558*

## 📉 **Bottom 3 Roles**
| Rank | Job Title | Avg Salary | vs Average |
|------|-----------|------------|------------|
| 10 | Frontend Developer | $132,341 | -9.1% |
| 11 | Business Analyst | $122,986 | -15.5% |
| 12 | Data Analyst | $119,901 | -17.6% |

## 🔥 **Key Insights**

### **AI/ML Dominance**
- **AI Engineer** tops the chart at **$172K**
- **ML Engineer** follows closely at **$165K**
- Both pay **13-18% above** market average

### **Salary Range Highlights**
- **Widest Range**: Backend Developer ($51K - $278K)
- **Narrowest Range**: Frontend Developer ($63K - $217K)
- **Highest Ceiling**: AI Engineer ($309K max)

### **Role Distribution**
- **Most Positions**: Data Scientist (524 jobs)
- **Least Positions**: Frontend Developer (454 jobs)
- **Balanced Sample**: All roles have 450-525 positions

## 💡 **Quick Takeaways**

1. **AI Skills Pay Premium**: Top 2 roles are AI/ML focused
2. **Analyst Roles Lower**: Data/Business analysts at bottom
3. **Engineering Solid Middle**: All engineering roles $139K-$151K
4. **Growth Potential**: Backend Dev shows widest range ($227K spread)

## 📈 **Salary Tiers**

- TIER 1 (Premium): $165K+ → AI Engineer, ML Engineer
- TIER 2 (High): $150-165K → Product Manager, Cloud/DevOps
- TIER 3 (Mid): $140-150K → Cybersecurity, Data Scientist, Software Eng
- TIER 4 (Standard): $130-140K → Backend, Frontend
- TIER 5 (Entry): <$130K → Business/Data Analyst

## 🎯 **Top 3 Takeaways**

1. **AI/ML roles pay best** - 18% premium over average
2. **Data-focused roles split** - Scientists ($147K) vs Analysts ($120K)
3. **Cloud/DevOps strong** - All above $150K average

## 🔍 **Quick Stats**
- **Best Paid**: AI Engineer ($172K)
- **Entry Friendly**: Data Analyst ($41K min)
- **Top Earner**: AI Engineer ($309K max)
- **Most Consistent**: Frontend (smallest range)

---

### 3. ⏳ Experience Years Analysis: Key Findings

<img width="387" height="408" alt="Screenshot 2026-03-18 114456" src="https://github.com/user-attachments/assets/fefcb710-4f3a-4a56-97ed-80b98d1d232b" />

## 📈 **Salary Growth by Experience**

| Experience | Avg Salary | Increase | Total Growth |
|------------|------------|----------|--------------|
| **Entry (0-2 yrs)** | $122,000 | Baseline | - |
| **Mid (3-7 yrs)** | $132,000 | +$10K | +8% |
| **Senior (8-12 yrs)** | $145,000 | +$13K | +19% |
| **Expert (13-17 yrs)** | $158,000 | +$13K | +30% |
| **Master (18-20 yrs)** | $169,000 | +$11K | +39% |

## 🎯 **Key Milestones**

### **🚀 Biggest Jumps**
| Years | Salary Jump | % Increase |
|-------|-------------|------------|
| 8 → 9 | $137K → $146K | **+6.8%** |
| 15 → 16 | $157K → $164K | **+4.4%** |
| 0 → 1 | *Slight dip* | -1.9% |

### **💰 Salary Ceilings**
- **Year 0**: $121,884
- **Year 10**: $146,545  
- **Year 17**: $164,505
- **Year 20**: $170,491

## 🔥 **5 Key Insights**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **Entry level dip**: Year 1 pays slightly less than Year 0 | Interns may outearn fresh juniors |
| 2 | **Steady growth**: Consistent $3-5K yearly increases | Predictable career progression |
| 3 | **Year 9 breakout**: First big jump (+$9K) | 8-9 year mark = Senior level |
| 4 | **Peak acceleration**: Years 15-17 see fastest growth | Expert level premium |
| 5 | **Skills plateau**: Avg skills stay ~10 throughout | Quality > quantity |


## 📉 **Experience vs Salary Curve**

Salary Progression:
- $170K | 🟢 (20)
- $160K | 🟢 (16-17)
- $150K | 🟢 (11-14)
- $140K | 🟢 (7-10)
- $130K | 🟢 (3-6)
- $120K | 🟢 (0-2)

## 💡 **Quick Takeaways**
```python
### **Career Stages**
🟢 0-2 years: Learning phase ($121-126K)
🟡 3-7 years: Growing phase ($128-138K)
🟠 8-12 years: Senior phase ($137-148K)
🔴 13-17 years: Expert phase ($152-164K)
⚫ 18-20 years: Master phase ($167-170K
```

### **Years to Salary Ratios**
- **Each year adds**: ~$2,500 to salary (avg)
- **10-year growth**: +$24,660 (+20%)
- **20-year growth**: +$48,607 (+40%)

## 🎓 **Skills Insight**
- **Skills count stable**: Always ~10 skills regardless of experience
- **Implication**: Experience > Skills count for salary growth
- **Peak skills**: Years 9 & 14 (10.6 skills)

## 📋 **Summary Stats**

| Metric | Value |
|--------|-------|
| **Starting Salary** (0 yrs) | $121,884 |
| **10-Year Salary** | $146,545 |
| **20-Year Salary** | $170,491 |
| **Total 20-Year Gain** | +$48,607 (+40%) |
| **Best ROI Years** | 8-9, 15-16 |
| **Skills Range** | 9.2 - 10.6 |


# ⚡ Experience Analysis: 30-Second Summary

## 📈 **The Growth Story**
```python
Year 0: $121K
↓
Year 5: $129K (+$8K)
↓
Year 10: $146K (+$25K)
↓
Year 15: $157K (+$36K)
↓
Year 20: $170K (+$49K)
```

## 🎯 **3 Main Takeaways**

### 1. **Experience Pays Off**
- **40% total growth** over 20 years
- **$2,430 average yearly raise**

### 2. **Sweet Spots**
- 🚀 Years 8-9: +$9,268 (best early jump)
- 🚀 Years 15-16: +$6,890 (best late jump)
- 📈 Years 3-7: +$1,500/yr (steady growth)

### 3. **Skills Don't Drive Salary**
- Skills count: 9-10 throughout
- **Conclusion**: Experience quality > quantity of skills

## 💰 **Salary by Career Stage**

| Stage | Years | Salary | Raise/Year |
|-------|-------|--------|------------|
| **Entry** | 0-2 | $122K | - |
| **Junior** | 3-5 | $129K | +$2.3K |
| **Mid** | 6-10 | $140K | +$2.2K |
| **Senior** | 11-15 | $152K | +$2.4K |
| **Expert** | 16-20 | $167K | +$3.0K |

## 🔥 **Best & Worst**

| 🏆 **Best Year** | 20 years: $170,491 |
|------------------|-------------------|
| 📉 **Toughest Year** | Year 1: $119,573 (dip) |
| 📈 **Best Jump** | Year 8→9: +$9,268 |
| ⚡ **Peak Earning** | $170K+ (18-20 yrs) |

## 💡 **Bottom Line**

> **"Stay for the long game - each year adds ~$2,500 to your salary, with big jumps at years 9 and 16."**

---

### 4. 🎓 Education Level Analysis: Key Findings

<img width="377" height="135" alt="Screenshot 2026-03-18 115036" src="https://github.com/user-attachments/assets/72a8ce45-9de6-4676-91f5-063b6c62a3df" />

## 📈 **Salary by Education Level**

| Rank | Education | Avg Salary | Premium vs High School |
|------|-----------|------------|------------------------|
| 🥇 | **PhD** | $163,549 | +$32,902 (+25%) |
| 🥈 | **Master's** | $153,406 | +$22,759 (+17%) |
| 🥉 | **Bachelor's** | $142,101 | +$11,454 (+9%) |
| 4 | **Diploma** | $138,933 | +$8,286 (+6%) |
| 5 | **High School** | $130,647 | Baseline |

## 🎯 **Key Insights**

### **💰 Education Premium**
```python
High School → Diploma : +$8,286
Diploma → Bachelor : +$3,168
Bachelor → Master's : +$11,304
Master's → PhD : +$10,143
```

### **📊 Sample Distribution**
| Education | Count | % of Total |
|-----------|-------|------------|
| High School | 1,216 | 21% |
| Diploma | 1,190 | 20% |
| Bachelor's | 1,139 | 20% |
| Master's | 1,123 | 19% |
| PhD | 1,175 | 20% |

*Perfectly balanced dataset! ~20% each level*

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **PhD pays best** | $163.5K avg - 25% premium |
| 2 | **Master's sweet spot** | Best ROI: +$11K over Bachelor's |
| 3 | **Diminishing returns** | Diploma→Bachelor: only +$3K |
| 4 | **Experience equal** | All levels ~10 years avg |
| 5 | **Perfect balance** | 1,100-1,200 each level |


## 📉 **Education Ladder**

- $170K | 🟢 PhD ($163.5K)
- $160K | 🟢 Master's ($153.4K)
- $150K | 🟢 Bachelor's ($142.1K)
- $140K | 🟢 Diploma ($138.9K)
- $130K | 🟢 High School ($130.6K)

## 💡 **ROI Analysis**

### **Best Value Adds**

- 🏆 Master's Degree: +$11,304

- 🥈 PhD: +$10,143

- 🥉 Bachelor's: +$3,168

- Diploma: +$8,286 (vs High School)

### **Years to Recover Education Cost***
| Degree | Salary Boost | Years to Recover |
|--------|--------------|------------------|
| Diploma | +$8,286 | <1 year |
| Bachelor's | +$3,168 | 2-3 years |
| Master's | +$11,304 | 1-2 years |
| PhD | +$10,143 | 2-3 years |

*Based on estimated education costs*

## 📋 **Quick Summary**

### **Salary Tiers by Education**

- TIER 1 ($160K+) : PhD
- TIER 2 ($150K+) : Master's
- TIER 3 ($140K+) : Bachelor's
- TIER 4 ($130K+) : Diploma, High School

### **Premium Percentages**
| Degree | vs High School | vs Previous Level |
|--------|----------------|-------------------|
| Diploma | +6% | +6% |
| Bachelor's | +9% | +3% |
| Master's | +17% | +8% |
| PhD | +25% | +7% |

## 🎓 **Bottom Line**

> **"Each degree adds value, but Master's gives the biggest single bump (+$11K). PhD commands top dollar, but requires longest commitment."**

## ⚡ **30-Second Summary**

| Education | Salary | Key Insight |
|-----------|--------|-------------|
| 🟢 **PhD** | $163.5K | Top earner, 25% premium |
| 🔵 **Master's** | $153.4K | Best ROI, +$11K jump |
| 🟡 **Bachelor's** | $142.1K | Solid middle ground |
| 🟠 **Diploma** | $138.9K | Small boost over HS |
| 🔴 **High School** | $130.6K | Baseline |

## 📊 **Interesting Note**
**Experience is consistent** (~10 years) across all levels, so salary differences are purely education-based!

---

### 5. 🌍 Location & Remote Work Analysis: Key Findings

<img width="347" height="408" alt="Screenshot 2026-03-18 115452" src="https://github.com/user-attachments/assets/76fe3faf-f73e-4274-b72f-0eb585461b0c" />

## 🏆 **Top Paying Countries**

| Rank | Country | Best Salary | Remote Premium |
|------|---------|-------------|----------------|
| 🥇 | **USA** | $188,879 (Remote) | +$10,339 |
| 🥈 | **Canada** | $174,127 (Remote) | +$7,689 |
| 🥉 | **UK** | $161,822 (Remote) | +$5,200 |
| 4 | **Germany** | $161,743 (Remote) | +$6,785 |
| 5 | **Australia** | $141,157 (Remote) | +$2,116 |

## 📉 **Lowest Paying**

| Rank | Country | Best Salary | Note |
|------|---------|-------------|------|
| 10 | **India** | $100,035 (Remote) | -47% vs USA |

## 🔥 **Remote Work Impact**

### **🌐 Countries Where Remote Pays BEST**

| Country | Remote Salary | vs Office | Premium |
|---------|--------------|-----------|---------|
| **USA** | $188,879 | +$10,339 | +5.8% |
| **Canada** | $174,127 | +$7,689 | +4.6% |
| **Germany** | $161,743 | +$6,785 | +4.4% |
| **UK** | $161,822 | +$5,200 | +3.3% |
| **Singapore** | $145,416 | +$10,829 | +8.0% |

### **🏢 Countries Where Office Pays BEST**

| Country | Office Salary | vs Remote | Premium |
|---------|--------------|-----------|---------|
| **Netherlands** | $133,534 | -$11,857 | Office pays less! |
| **Sweden** | $137,958 | -$4,235 | Office pays less |
| **Australia** | $139,041 | -$2,116 | Office pays less |

## 💡 **Key Insight: Remote Wins!**
- Remote pays MORE in 8/10 countries
- Remote pays LESS in only 2 countries

## 📊 **Salary Rankings by Work Mode**

### **🚀 Remote Work**

- USA $188,879

- Canada $174,127

- UK $161,822

- Germany $161,743

- Singapore $145,416

### **🏢 Office Work**

- USA $178,540

- Canada $166,439

- UK $156,621

- Germany $154,318

- Australia $139,041

### **🔄 Hybrid Work**

- USA $175,516

- Canada $167,833

- UK $161,162

- Germany $151,958

- Singapore $133,754

## 🌎 **Country Deep Dive**

### **🇺🇸 USA - Top Earner**
| Mode | Salary | Rank |
|------|--------|------|
| Remote | $188,879 | #1 |
| Office | $178,540 | #1 |
| Hybrid | $175,516 | #1 |

### **🇮🇳 India - Bottom**
| Mode | Salary | vs USA |
|------|--------|--------|
| Remote | $100,035 | -47% |
| Hybrid | $97,633 | -44% |
| Office | $95,694 | -46% |

## 💰 **Remote Premium by Country**

| Country | Remote Premium | Best Mode |
|---------|---------------|-----------|
| **Singapore** | +8.0% | Remote |
| **USA** | +5.8% | Remote |
| **Germany** | +4.4% | Remote |
| **UK** | +3.3% | Remote |
| **Sweden** | +3.0% | Remote |
| **Canada** | +2.7% | Remote |
| **India** | +2.4% | Remote |
| **Australia** | +1.5% | Remote |
| **Netherlands** | -8.2% | Remote (still best) |
| **Remote-First** | N/A | Remote |


## ⚡ **30-Second Summary**

### **🌍 Top 3 Countries to Work**
| Country | Best Salary | Best Mode |
|---------|-------------|-----------|
| 🥇 USA | $188,879 | Remote |
| 🥈 Canada | $174,127 | Remote |
| 🥉 UK | $161,822 | Remote |

### **💼 Work Mode Winner**

- 🥇 REMOTE: Wins in 8/10 countries
- 🥈 HYBRID: Usually 2nd best
- 🥉 OFFICE: Usually lowest pay

## 🎯 **5 Key Takeaways**

| # | Insight | Impact |
|---|---------|--------|
| 1 | **Remote pays best** in most countries | Work from home = more money |
| 2 | **USA leads** by large margin | $188K remote average |
| 3 | **India salary gap** is significant | -47% vs USA |
| 4 | **UK & Germany** similar | Both ~$161K remote |
| 5 | **Netherlands unique** | Remote pays more but smaller gap |

## 💡 **Bottom Line**

> **"Go remote in the USA for max salary ($188K). If in Europe, UK or Germany pay best (~$161K). Hybrid and office roles typically pay less."**

## 📋 **Salary League Table** (Remote Work)

---

### 6. 🏭 Industry Analysis: Key Findings

<img width="522" height="245" alt="Screenshot 2026-03-18 115904" src="https://github.com/user-attachments/assets/4d4586bc-0ddf-4318-85fb-affeb6005f14" />

## 📈 **Salary by Industry**

| Rank | Industry | Avg Salary | vs Average | Job Count |
|------|----------|------------|------------|-----------|
| 🥇 | **Manufacturing** | $147,433 | +$1,875 | 582 |
| 🥈 | **Media** | $146,963 | +$1,405 | 583 |
| 🥉 | **Healthcare** | $146,957 | +$1,399 | 605 |
| 4 | **Telecom** | $146,432 | +$874 | 588 |
| 5 | **Consulting** | $145,136 | -$422 | 582 |
| 6 | **Education** | $144,946 | -$612 | 574 |
| 7 | **Finance** | $144,867 | -$691 | 591 |
| 8 | **Technology** | $144,549 | -$1,009 | 556 |
| 9 | **Retail** | $144,374 | -$1,184 | 585 |
| 10 | **Government** | $143,862 | -$1,696 | 597 |

*Overall Average: $145,558*

## 🎯 **Key Insights**

### **💰 Top 3 Industries**

- 🥇 Manufacturing $147,433
- 🥈 Media $146,963
- 🥉 Healthcare $146,957

### **📉 Bottom 3 Industries**

- 8 Technology $144,549
- 9 Retail $144,374
- 10 Government $143,862

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **Manufacturing leads** | $147.4K - highest payer |
| 2 | **Tech not top** | Only #8 despite perception |
| 3 | **Very tight spread** | Only $3.6K gap top to bottom |
| 4 | **Healthcare most jobs** | 605 positions |
| 5 | **Government lowest** | $143.9K - still solid |

## 📊 **Industry Salary Range**

- All industries within $143K - $147K
- Gap between #1 and #10: Only $3,571 (2.5%)

## 💡 **Interesting Observations**

### **Experience vs Salary**
| Industry | Experience | Salary Rank |
|----------|------------|-------------|
| Healthcare | 10.6 yrs (highest) | #3 |
| Technology | 10.4 yrs | #8 |
| Finance | 9.6 yrs (lowest) | #7 |

*More experience doesn't always mean higher pay!*

### **Certifications**
- **All industries**: 2.4-2.6 avg certifications
- **Consulting** leads: 2.6 certs
- **Media/Finance** lowest: 2.4 certs

## 📈 **Industry Ranking**
```python
$147.5K ┤ 🟢 Manufacturing
$147.0K ┤ 🟢 🟢 Media
$146.5K ┤ 🟢 🟢 🟢 Healthcare
$146.0K ┤ 🟢 🟢 🟢 🟢 Telecom
$145.5K ┤ 🟢 🟢 🟢 🟢 🟢 🟢
$145.0K ┤ 🟢 🟢 🟢 🟢 🟢 🟢 🟢
$144.5K ┤ 🟢 🟢 🟢 🟢 🟢 🟢 🟢
$144.0K ┤ 🟢 🟢 🟢 🟢 🟢 🟢 🟢
```

## 🎯 **Industry Clusters**

### **TIER 1 ($147K+)**
- Manufacturing ($147,433)

### **TIER 2 ($146-147K)**
- Media ($146,963)
- Healthcare ($146,957)
- Telecom ($146,432)

### **TIER 3 ($145-146K)**
- Consulting ($145,136)

### **TIER 4 ($144-145K)**
- Education ($144,946)
- Finance ($144,867)
- Technology ($144,549)
- Retail ($144,374)
- Government ($143,862)

## ⚡ **30-Second Summary**

### **Best & Worst**
| 🏆 Highest | Manufacturing | $147,433 |
|------------|---------------|----------|
| 📉 Lowest | Government | $143,862 |
| 📊 Gap | Top to Bottom | $3,571 |

### **Surprises**
- **Tech not top** (only #8)
- **Manufacturing #1** (beats Tech/Finance)
- **All industries close** (<2.5% spread)

## 💡 **Bottom Line**

> **"Industry matters less than you think - only $3.6K separates top from bottom. Your role and experience matter more!"**

---

### 7. 🛠️ Skills Count Analysis: Key Findings

<img width="385" height="407" alt="Screenshot 2026-03-18 120232" src="https://github.com/user-attachments/assets/bc663559-8dd5-43c9-acff-7f9eaabb16bb" />

## 📈 **Salary by Skills Count**

| Skills | Sample | Avg Salary | vs Baseline | Trend |
|--------|--------|------------|-------------|-------|
| **1-3 skills** | 907 | $137,456 | Baseline | 📉 Lowest |
| **4-7 skills** | 1,233 | $142,114 | +$4,658 | 📈 Growing |
| **8-11 skills** | 1,222 | $145,062 | +$7,606 | 📈 Higher |
| **12-15 skills** | 1,270 | $148,966 | +$11,510 | 📈 Peak |
| **16-19 skills** | 1,211 | $152,426 | +$14,970 | 🚀 Max |

## 🎯 **Key Milestones**

### **💰 Salary by Skill Bands**

- 🟢 1-3 skills: $137K (Entry level)
- 🟡 4-7 skills: $142K (+$5K)
- 🟠 8-11 skills: $145K (+$8K)
- 🔴 12-15 skills: $149K (+$12K)
- ⚫ 16-19 skills: $152K (+$15K)

### **🚀 Biggest Jumps**
| Skills Jump | Salary Jump | % Increase |
|-------------|-------------|------------|
| 3 → 4 | $136.6K → $143.2K | **+4.8%** |
| 7 → 8 | $142.3K → $146.6K | **+3.0%** |
| 13 → 14 | $148.6K → $150.5K | **+1.3%** |
| 17 → 18 | $147.6K → $153.2K | **+3.8%** |
| 18 → 19 | $153.2K → $157.0K | **+2.5%** |

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **More skills = more pay** | Clear upward trend |
| 2 | **Sweet spot at 14+ skills** | $150K+ club |
| 3 | **Peak at 19 skills** | $157K max |
| 4 | **Big jump at 4 skills** | +$6.5K from 3 skills |
| 5 | **Diminishing returns** | Smaller jumps after 14 |

## 📊 **Skills vs Salary Curve**
Salary Progression:
- $158K | 🟢 (19)
- $154K | 🟢 (16,18)
- $150K | 🟢 (12-15)
- $146K | 🟢 (8-11)
- $142K | 🟢 (4-7)
- $138K | 🟢 (1-3)

## 💡 **Skill Premium Analysis**

### **By Skill Tier**
| Tier | Skills | Salary | Total Premium |
|------|--------|--------|---------------|
| Bronze | 1-3 | $137,456 | - |
| Silver | 4-7 | $142,114 | +$4,658 |
| Gold | 8-11 | $145,062 | +$7,606 |
| Platinum | 12-15 | $148,966 | +$11,510 |
| Diamond | 16-19 | $152,426 | +$14,970 |

### **Value Per Additional Skill**
- **1-4 skills**: +$2,200 per skill
- **5-10 skills**: +$1,100 per skill
- **11-15 skills**: +$1,400 per skill
- **16-19 skills**: +$1,500 per skill

## 🎯 **Sweet Spots**

### **Best Value Skills**
- 🏆 19 skills: $157,008 (max)
- 🥈 18 skills: $153,240
- 🥉 16 skills: $151,850
- 4th 14 skills: $150,464
- 5th 12-13 skills: ~$148,400

## 📉 **Interesting Dips**

| Skills | Salary | Note |
|--------|--------|------|
| 3 | $136,650 | Lowest point |
| 5 | $138,413 | Small dip |
| 10 | $143,057 | Below trend |
| 17 | $147,608 | Below neighbors |

## ⚡ **30-Second Summary**

### **Skill Tiers & Pay**

- 🟢 1-3 skills: $137K (Start here)
- 🟡 4-7 skills: $142K (+$5K for 4 skills)
- 🟠 8-11 skills: $145K (Solid mid-tier)
- 🔴 12-15 skills: $149K (Senior level)
- ⚫ 16-19 skills: $152K+ (Expert level)

### **Best & Worst**
| 🏆 **Best Skill Count** | 19 skills | $157,008 |
|------------------------|-----------|----------|
| 📉 **Worst Skill Count** | 3 skills | $136,650 |
| 📈 **Best Jump** | 3→4 skills | +$6,537 |

## 💡 **Bottom Line**

> **"Each skill adds ~$1,500 to your salary. The first 4 skills matter most. Target 14+ skills for $150K+ club."**

---

### 8. 🏢 Company Size Analysis: Key Findings

<img width="427" height="132" alt="Screenshot 2026-03-18 120648" src="https://github.com/user-attachments/assets/0f09266e-e53e-4616-a38c-aeb1c7f53b13" />

## 📈 **Salary by Company Size**

| Rank | Company Size | Avg Salary | vs Startup | Job Count |
|------|--------------|------------|------------|-----------|
| 🥇 | **Enterprise** | $169,426 | +$42,500 | 1,184 |
| 🥈 | **Large** | $155,668 | +$28,742 | 1,132 |
| 🥉 | **Medium** | $142,593 | +$15,667 | 1,189 |
| 4 | **Small** | $133,099 | +$6,173 | 1,196 |
| 5 | **Startup** | $126,926 | Baseline | 1,142 |

## 📊 **Company Size Ladder**
```python
$170K ┤ 🟢 Enterprise ($169K)
$160K ┤ 🟢 Large ($156K)
$150K ┤
$140K ┤ 🟢 Medium ($143K)
$130K ┤ 🟢 Small ($133K)
$120K ┤ 🟢 Startup ($127K)
```

## 🎯 **Key Insights**

### **💰 Pay Gap by Size**
| Size Jump | Salary Increase |
|-----------|-----------------|
| Startup → Small | +$6,173 |
| Small → Medium | +$9,494 |
| Medium → Large | +$13,075 |
| Large → Enterprise | +$13,758 |

### **🏢 Size Premiums**

- Enterprise: +33% vs Startup
- Large: +23% vs Startup
- Medium: +12% vs Startup
- Small: +5% vs Startup

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **Bigger = Better Pay** | Clear size-salary correlation |
| 2 | **Enterprise pays most** | $169K - 33% above startups |
| 3 | **Startups pay least** | $127K - but offer equity? |
| 4 | **Large jump** | Medium→Large: +$13K |
| 5 | **Balanced sample** | 1,130-1,200 each size |

## 💡 **Size Premium Analysis**

### **By Company Tier**
| Tier | Size | Salary | Premium vs Startup |
|------|------|--------|-------------------|
| 🟢 Startup | 1-50? | $126,926 | Baseline |
| 🟡 Small | 51-200 | $133,099 | +5% |
| 🟠 Medium | 201-500 | $142,593 | +12% |
| 🔴 Large | 501-1000 | $155,668 | +23% |
| ⚫ Enterprise | 1000+ | $169,426 | +33% |

## 📈 **Salary Progression by Size**

Career Path Salary Growth:
- Startup → $127K
- Small → $133K (+$6K)
- Medium → $143K (+$16K)
- Large → $156K (+$29K)
- Enterprise → $169K (+$42K)

## 🎯 **Company Size Sweet Spots**

### **Best Pay**
- 🥇 Enterprise: $169,426
- 🥈 Large: $155,668
- 🥉 Medium: $142,593

### **Best Growth Opportunities**
- 🚀 Startup → Small: +5% (quick gain)
- 🚀 Medium → Large: +9% (big jump)
- 🚀 Large → Enterprise: +9% (top tier)

## ⚡ **30-Second Summary**

### **Salary by Size**
| Size | Salary | vs Startup |
|------|--------|------------|
| 🚀 **Startup** | $126,926 | Baseline |
| 🏢 **Small** | $133,099 | +$6K |
| 🏭 **Medium** | $142,593 | +$16K |
| 🏛️ **Large** | $155,668 | +$29K |
| 🏰 **Enterprise** | $169,426 | +$42K |

## 💡 **Interesting Observations**

### **Experience Levels**
- **All sizes**: 9.8-10.3 years experience
- **Most experienced**: Medium companies (10.3 yrs)
- **Least experienced**: Small companies (9.8 yrs)

*Experience similar across sizes - pay difference purely size-based!*

### **Job Distribution**
- Startup: 1,142 jobs (19.5%)
- Small: 1,196 jobs (20.5%)
- Medium: 1,189 jobs (20.3%)
- Large: 1,132 jobs (19.4%)
- Enterprise: 1,184 jobs (20.3%)

*Perfectly balanced dataset!*

## 🎯 **Bottom Line**

> **"Company size matters significantly - Enterprise pays 33% more than Startups for the same experience level."**

---

### 9. 📜 Certifications Analysis: Key Findings

<img width="382" height="93" alt="Screenshot 2026-03-18 121046" src="https://github.com/user-attachments/assets/d3346b7f-5251-45dc-921a-4e859c58e200" />

## 📈 **Salary by Certification Level**

| Rank | Cert Group | Count | Avg Salary | vs No Certs | Premium |
|------|------------|-------|------------|-------------|---------|
| 🥇 | **3-5 Certs** | 2,934 | $149,075 | +$7,352 | +5.2% |
| 🥈 | **1-2 Certs** | 1,915 | $142,160 | +$437 | +0.3% |
| 🥉 | **No Certs** | 994 | $141,723 | Baseline | - |

## 🎯 **Key Insights**

### **💰 Certification Premium**

- No Certs → $141,723
- 1-2 Certs → $142,160 (+$437)
- 3-5 Certs → $149,075 (+$7,352)

### **📊 Group Distribution**
| Group | Count | % of Total |
|-------|-------|------------|
| **3-5 Certs** | 2,934 | 50.2% |
| **1-2 Certs** | 1,915 | 32.8% |
| **No Certs** | 994 | 17.0% |

*Half of professionals have 3-5 certifications!*

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **Certs = More Pay** | Clear positive correlation |
| 2 | **Threshold Effect** | 1-2 certs barely matter (+$437) |
| 3 | **Sweet Spot** | 3-5 certs = big jump (+$7,352) |
| 4 | **Most Common** | 3-5 certs (50% of workforce) |
| 5 | **Minority No Certs** | Only 17% have none |

## 📊 **Certification Impact Curve**
```python
Salary Progression:
$150K ┤ 🟢 (3-5 Certs: $149K)
$148K ┤
$146K ┤
$144K ┤
$142K ┤ 🟢 (1-2 Certs: $142K) 🟢 (No Certs: $142K)
$140K ┤
```

## 💡 **Certification ROI Analysis**

### **Value Per Certification**
| Level | Total Premium | Per Cert Value |
|-------|---------------|----------------|
| 1-2 Certs | +$437 | ~$300 per cert |
| 3-5 Certs | +$7,352 | ~$1,800 per cert |

*Diminishing returns until you reach 3+ certs!*

### **Break-Even Analysis**
- 1-2 Certs: Barely breaks even
- 3-5 Certs: Big payoff (+$7.3K/year)

## 🎯 **Sweet Spot Insights**

### **Best Certification Strategy**
- 🏆 Target: 3-5 certifications
- 🥈 Avoid: Stopping at 1-2 certs
- 🥉 Minimum: Get at least 3 for real impact

### **Certification Tiers**
| Tier | Certs | Salary | Status |
|------|-------|--------|--------|
| 🟢 Basic | 0 | $141,723 | Entry Level |
| 🟡 Intermediate | 1-2 | $142,160 | Low ROI |
| 🔴 Advanced | 3-5 | $149,075 | High ROI |

## ⚡ **30-Second Summary**

### **The Certification Effect**
```python
No Certs: $141,723 ─┐
1-2 Certs: $142,160 ─┼─ Barely different
│
3-5 Certs: $149,075 ─┘ BIG JUMP!
```

### **Key Numbers**
| Metric | Value |
|--------|-------|
| **Max Pay** | $149,075 (3-5 Certs) |
| **Min Pay** | $141,723 (No Certs) |
| **Total Gap** | $7,352 |
| **ROI Threshold** | 3+ Certs |
| **Most Common** | 3-5 Certs (50%) |

## 💡 **Bottom Line**

> **"Don't bother with 1-2 certifications - they barely move the needle. Go for 3+ certifications for a real $7.3K pay bump!"**

---

### 10. 🔍 Combined Factors Analysis: Education + Experience + Remote Work

<img width="527" height="410" alt="Screenshot 2026-03-18 121455" src="https://github.com/user-attachments/assets/008afa26-9ecc-4a27-abb9-50d187d7d0a4" />

## 🏆 **Top 10 Highest Paying Combinations**

| Rank | Education | Experience | Remote | Avg Salary | Sample |
|------|-----------|------------|--------|------------|--------|
| 🥇 | **PhD** | 9 yrs | Yes | $172,380 | 16 |
| 🥈 | **PhD** | 7 yrs | Yes | $163,492 | 21 |
| 🥉 | **Master's** | 9 yrs | Yes | $161,135 | 22 |
| 4 | **PhD** | 6 yrs | No | $158,341 | 19 |
| 5 | **Master's** | 8 yrs | Yes | $158,309 | 14 |
| 6 | **PhD** | 8 yrs | Yes | $157,516 | 19 |
| 7 | **PhD** | 0 yrs | Yes | $157,152 | 17 |
| 8 | **PhD** | 5 yrs | Yes | $156,935 | 16 |
| 9 | **PhD** | 6 yrs | Hybrid | $156,154 | 18 |
| 10 | **Master's** | 4 yrs | Yes | $155,433 | 18 |

## 📉 **Bottom 10 Lowest Paying Combinations**

| Rank | Education | Experience | Remote | Avg Salary | Sample |
|------|-----------|------------|--------|------------|--------|
| 📉 | High School | 1 yr | No | $96,327 | 11 |
| 📉 | High School | 0 yrs | No | $100,482 | 20 |
| 📉 | High School | 0 yrs | Hybrid | $104,507 | 21 |
| 📉 | High School | 6 yrs | Hybrid | $108,523 | 16 |
| 📉 | High School | 0 yrs | Yes | $108,632 | 20 |
| 📉 | Diploma | 0 yrs | Hybrid | $107,390 | 21 |
| 📉 | High School | 4 yrs | Hybrid | $107,039 | 14 |
| 📉 | Diploma | 4 yrs | Hybrid | $109,893 | 26 |
| 📉 | Bachelor's | 1 yr | No | $110,281 | 26 |
| 📉 | High School | 2 yrs | No | $111,044 | 19 |

## 🎯 **Key Insights by Education Level**

### **🎓 PhD Holders**
| Best Combo | Salary | Worst Combo | Salary |
|------------|--------|-------------|--------|
| 9 yrs + Remote | $172,380 | 0 yrs + Office | $136,272 |
| 7 yrs + Remote | $163,492 | 1 yr + Office | $129,766 |
| 0 yrs + Remote | $157,152 | 5 yrs + Hybrid | $133,300 |

**PhD Premium**: Remote adds **$20K+** at entry level (0 yrs)

### **🎓 Master's Degree**
| Best Combo | Salary | Worst Combo | Salary |
|------------|--------|-------------|--------|
| 9 yrs + Remote | $161,135 | 0 yrs + Office | $125,289 |
| 4 yrs + Remote | $155,433 | 1 yr + Office | $121,703 |
| 8 yrs + Remote | $158,309 | 2 yrs + Office | $122,137 |

**Master's Insight**: Remote = **+$16K** at entry level

### **🎓 Bachelor's Degree**
| Best Combo | Salary | Worst Combo | Salary |
|------------|--------|-------------|--------|
| 7 yrs + Remote | $145,235 | 1 yr + Office | $110,281 |
| 9 yrs + Hybrid | $147,256 | 0 yrs + Office | $116,610 |
| 4 yrs + Hybrid | $136,127 | 2 yrs + Hybrid | $112,374 |

### **🎓 Diploma**
| Best Combo | Salary | Worst Combo | Salary |
|------------|--------|-------------|--------|
| 10 yrs + Remote | $155,710 | 0 yrs + Hybrid | $107,390 |
| 7 yrs + Remote | $138,623 | 4 yrs + Hybrid | $109,893 |
| 5 yrs + Remote | $130,299 | 1 yr + Hybrid | $108,204 |

### **🎓 High School**
| Best Combo | Salary | Worst Combo | Salary |
|------------|--------|-------------|--------|
| 10 yrs + Remote | $142,775 | 1 yr + Office | $96,327 |
| 3 yrs + Remote | $120,632 | 0 yrs + Office | $100,482 |
| 7 yrs + Remote | $126,071 | 6 yrs + Hybrid | $108,523 |

## 🔥 **5 Key Takeaways**

| # | Finding | Impact |
|---|---------|--------|
| 1 | **PhD + Remote = Gold** | Top 7 spots all PhD with Remote |
| 2 | **Remote wins every time** | Remote pays best for ALL education levels |
| 3 | **Experience compounds** | 9-10 yrs + Remote = max pay |
| 4 | **Entry level PhD pays more** | $157K > Most Master's with experience |
| 5 | **High School ceiling** | Max $142K (10 yrs + Remote) |

## 💡 **Remote Work Premium by Education**

| Education | Remote Premium (0 yrs) | Remote Premium (5 yrs) |
|-----------|------------------------|------------------------|
| **PhD** | +$20,880 | +$10,348 |
| **Master's** | +$16,007 | +$7,871 |
| **Bachelor's** | +$1,781 | +$11,041 |
| **Diploma** | +$12,741 | +$11,019 |
| **High School** | +$8,149 | -$2,632* |

*High School at 5 yrs: Office pays better (rare exception)*

## 📈 **Career Path Optimization**

### **🚀 Fastest Path to $150K+**

- PhD + Remote (0 yrs) → $157K (IMMEDIATE)

- Master's + Remote (4 yrs) → $155K

- Master's + Remote (9 yrs) → $161K

- PhD + Remote (5 yrs) → $157K

- Diploma + Remote (10 yrs) → $156K (late bloomer)

### **💰 Entry Level Salaries (0 Years)**
| Education | Remote | Hybrid | Office |
|-----------|--------|--------|--------|
| **PhD** | $157,152 | $138,565 | $136,272 |
| **Master's** | $141,295 | $128,010 | $125,289 |
| **Bachelor's** | $118,391 | $117,000 | $116,610 |
| **Diploma** | $125,292 | $107,390 | $112,551 |
| **High School** | $108,632 | $104,507 | $100,482 |

## 🎯 **Best Combinations by Category**

### **For Maximum Salary**
- 🏆 PhD (9 yrs) + Remote = $172,380
- 🥈 PhD (7 yrs) + Remote = $163,492
- 🥉 Master's (9 yrs) + Remote = $161,135

### **For Quick Start (0 Experience)**
- 🥇 PhD + Remote = $157,152
- 🥈 Master's + Remote = $141,295
- 🥉 Diploma + Remote = $125,292

### **For Mid-Career (5 Years)**
- 🥇 PhD + Remote = $156,935
- 🥈 Master's + Remote = $145,772
- 🥉 Bachelor's + Remote = $128,052

### **For Experienced (10 Years)**
- 🥇 PhD + Hybrid = $168,072
- 🥈 Master's + Office = $163,675
- 🥉 Diploma + Remote = $155,710

## ⚡ **30-Second Summary**

### **The Ultimate Formula for High Salary**
- ✅ Get a PhD (+$20-30K)
- ✅ Work Remotely (+$10-20K)
- ✅ Gain 7-10 years experience
- ✅ = $160-172K salary

### **The Worst Combinations to Avoid**
- ❌ High School + Office (any year)
- ❌ Diploma + Hybrid (0-4 yrs)
- ❌ Bachelor's + Office (0-2 yrs)
- ❌ Any education + Office at entry level

## 💡 **Bottom Line**

> **"PhD + Remote Work = Winning Formula. Even at entry level, PhDs with remote earn more than most Master's with 5 years experience. Remote work consistently pays more across ALL education levels."**

---

# Full SQL Analysis Query-Code👇
-<a href="https://github.com/Donovandonz/SQL--job-salary-prediction-analysis/blob/main/job_salary_prediction_analysis.sql">Job-salary-prediction-SQL-query-code-analysis</a>














