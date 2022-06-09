# ch03_41: 日次リターンの標準偏差と相関を計算

sd(daily_stock_return$firm1) # sdはstandard deviation（標準偏差）の略
## [1] 0.0538396

cor(daily_stock_return$firm1, daily_stock_return$firm2) # corはcorrelation（相関）の略
## [1] 0.2334892