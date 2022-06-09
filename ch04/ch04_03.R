# ch04_03: firm_ID列とindustry_ID列をファクター型に変換

financial_data$firm_ID <- as.factor(financial_data$firm_ID)
financial_data$industry_ID <- as.factor(financial_data$industry_ID)

class(financial_data$firm_ID)
## [1] "factor"

class(financial_data$industry_ID)
## [1] "factor"