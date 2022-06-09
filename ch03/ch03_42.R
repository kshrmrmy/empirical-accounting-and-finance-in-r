# ch03_42: 最も日次リターンが低い日付を抽出

worst_day_ID <- which.min(daily_stock_return$firm1) # which.min()関数で行番号を取得
## [1] 20

daily_stock_return$date[worst_day_ID] # 取得した行番号を代入して日付を取得
## [1] "2020-04-28"