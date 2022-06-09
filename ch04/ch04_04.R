# ch04_04: read_csv()関数を用いるとdate列が最初から日付型に

daily_stock_return <- read_csv("ch03_daily_stock_return.csv")
class(daily_stock_return$date)

## [1] "Date"