# ch06_02: 前年度の時価総額を追加

annual_data <- annual_data %>% 
  group_by(firm_ID) %>% # firm_IDでグループ化
  mutate(lagged_ME = lag(ME)) %>% 
  ungroup()