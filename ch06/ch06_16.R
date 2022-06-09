# ch06_16: 市場ポートフォリオの超過リターンを追加

ME_sorted_portfolio <- factor_data %>% 
  select(-R_F) %>% # 無リスク金利は重複するので結合前に削除
  full_join(ME_sorted_portfolio, by = "month_ID") %>% # month_IDをキーに
  select(-R_Me, R_Me) # R_Meを最終列へ移動