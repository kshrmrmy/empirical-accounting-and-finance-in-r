# ch05_15: 月次リターンを累積して年次リターンを計算 (1)

annual_stock_data <- stock_data %>% 
  group_by(firm_ID, year) %>% # firm_IDとyearのペアでグループ化
  summarize(R = prod(1 + R) - 1, # バイ・アンド・ホールドの年次リターン
            R_F = prod(1 + R_F) - 1) %>%
  mutate(Re = R - R_F) %>%
  select(firm_ID, year, R, Re, R_F) %>%
  ungroup()