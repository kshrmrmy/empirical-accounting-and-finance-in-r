# ch03_48: date列を文字型として定義

date <- c("2021/4/1", "2021/4/2", "2021/4/5")
stock_return <- c(0.02, -0.01, -0.02)

stock_return_data <- data.frame(date, stock_return) 
str(stock_return_data)

## 'data.frame':	3 obs. of  2 variables:
## $ date        : chr  "2021/4/1" "2021/4/2" "2021/4/5"
## $ stock_return: num  0.02 -0.01 -0.02