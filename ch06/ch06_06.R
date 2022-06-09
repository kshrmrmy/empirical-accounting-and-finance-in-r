# ch06_06: 月次データに保有比率のデータを追加

monthly_data <- annual_data %>% 
  select(year, firm_ID, w_M) %>% # 追加に必要な情報のみ抽出
  full_join(monthly_data, by = c("year", "firm_ID")) %>% # yearとfirm_IDのペアをキーに結合
  select(-w_M, w_M) # w_Mを最終列に移動