# ch04_27: 株主資本の計算 (2)

financial_data <- financial_data %>%
  mutate(BE = (OA - OL) - (FO - FA)) # mutate(financial_data, BE = (OA - OL) - (FO - FA))と書いても同じ