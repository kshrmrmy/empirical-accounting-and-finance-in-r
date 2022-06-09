# ch05_18: 年次リターン・データと財務データの結合 (1)

annual_data <- annual_stock_data %>%
  full_join(financial_data, by = c("firm_ID", "year")) # firm_IDとyearのペアをキーとして設定