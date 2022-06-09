# ch03_49: date列を日付型に変換

stock_return_data$date <- as.Date(stock_return_data$date)
str(stock_return_data)

## 'data.frame':	3 obs. of  2 variables:
##  $ date        : Date, format: "2021-04-01" "2021-04-02" "2021-04-05"
##  $ stock_return: num  0.02 -0.01 -0.02 