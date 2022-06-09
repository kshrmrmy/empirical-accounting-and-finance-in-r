# ch06_26: 前年度の時価総額に基づくランク付け

annual_data <- annual_data %>% 
  mutate(lagged_ME = replace(lagged_ME, is.na(lagged_BEME), NA)) %>% # lagged_BEMEが欠損している場合は欠損扱いに
  group_by(year) %>% 
  mutate(ME_rank2 = as.factor(ntile(lagged_ME, 2))) %>% 
  ungroup()