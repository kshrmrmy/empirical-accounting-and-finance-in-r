# ch05_19: 年次リターン・データと財務データの結合 (2)

annual_data <- annual_stock_data %>% 
  full_join(financial_data) # キーを省略した場合, 列名が同じ変数がキーに

## Joining, by = c("firm_ID", "year")