# ch06_04: 保有比率の欠損値を0で置き換え

annual_data <- annual_data %>% 
  mutate(w_M = replace(w_M, year >= 2016 & is.na(w_M), 0)) # 2016年以降の欠損値は0で置き換え