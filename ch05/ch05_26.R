# ch05_26: firm_IDが1の企業の月次超過リターンを折れ線グラフで可視化

stock_data %>%
  filter(firm_ID == 1) %>% # firm_IDが1の企業のデータのみ抽出
  ggplot() + 
  geom_line(aes(x = month_ID, y = Re)) + # x軸にmonth_ID, y軸に月次超過リターンを表示
  labs(x = "Month ID", y = "Firm 1's Monthly Excess Return") + 
  scale_x_continuous(expand = c(0.01, 0)) + # 折れ線グラフとy軸の間の空白を指定
  theme_classic()