# ch04_18: パイプ演算子%>%が便利な理由

financial_data$sales %>% 
  log() %>% # この時点でlog(financial_data$sales)を計算
  median()
## [1] 10.6074

median(log(financial_data$sales))
## [1] 10.6074