# ch08_05: 各データセットを統合して単一のデータフレームに (1)

return_data <- return_data %>% 
  select(-date) %>% # date列が重複するので削除
  full_join(market_return_data, by = "date_ID") # 市場ポートフォリオのリターンと結合