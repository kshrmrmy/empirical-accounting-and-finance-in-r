# ch03_50: 日付型の変数に対する足し算の例

stock_return_data$date <- stock_return_data$date + 1 # 文字型の変数に足し算するとエラーになる
head(stock_return_data)

##         date stock_return
## 1 2021-04-02         0.02
## 2 2021-04-03        -0.01
## 3 2021-04-06        -0.02 