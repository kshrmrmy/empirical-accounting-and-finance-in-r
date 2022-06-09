# ch05_25: 売上高・当期純利益・時価総額をバブルチャートで可視化

annual_data %>% 
  filter(year == 2015,
         firm_ID %in% 2:20, # firm_IDが2から20のデータを抽出
         X > 0) %>% # 対数を取るため当期純利益（X）が正のデータのみ抽出
  ggplot() + 
  geom_point(aes(x = log(sales), y = log(X), size = ME), alpha = 0.4) + # バブルチャートを描くにはsize引数を指定
  scale_size(range = c(1, 20), name = "Market Equity") + # range引数でバブルの最小・最大面積を指定
  scale_x_continuous(limits = c(8, 14)) + # 両軸の範囲を指定
  scale_y_continuous(limits = c(2, 11)) +
  theme_classic()