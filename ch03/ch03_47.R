# ch03_47: industry列をファクター型に変換

firm_data$industry <- as.factor(firm_data$industry)
str(firm_data)

## 'data.frame':	3 obs. of  3 variables:
##  $ firm_ID : num  1 2 3
##  $ name    : chr  "Firm A" "Firm B" "Firm C"
##  $ industry: Factor w/ 2 levels "Chemicals","Machinery": 2 1 2