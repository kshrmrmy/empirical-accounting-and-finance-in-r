# ch06_07: 市場ポートフォリオの月次リターンを計算

factor_data <- monthly_data %>% 
  filter(month_ID >= 13) %>% # 2016年以降のデータを抽出
  group_by(month_ID) %>% # month_IDでグループ化
  summarize(R_F = R_F[1], # 当該月の無リスク金利はどの銘柄でも共通なので最初の値を抽出
            R_M = sum(w_M * R, na.rm = TRUE)) %>% # 各銘柄の月次リターンの加重平均を計算
  mutate(R_Me = R_M - R_F) # 月次超過リターンを計算