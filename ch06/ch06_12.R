# ch06_12: 各ポートフォリオに属する企業数を確認

annual_data %>% 
  select(year, firm_ID, ME_rank10) %>% 
  drop_na() %>% # 欠損行を削除
  group_by(year, ME_rank10) %>% # yearとME_rank10でグループ化
  summarize(N = n()) %>% # 各ポートフォリオの企業数をカウント
  ungroup()