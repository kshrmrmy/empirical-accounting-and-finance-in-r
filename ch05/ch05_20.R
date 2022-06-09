# ch05_20: 月次リターン・データと財務データの結合

monthly_data  <- stock_data %>%
  full_join(financial_data, by = c("firm_ID", "year"))