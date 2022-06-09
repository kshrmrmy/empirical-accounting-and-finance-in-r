# ch04_32: 産業別のROE平均値を棒グラフで可視化

financial_data %>%
  group_by(industry_ID) %>%
  summarize(mean_ROE = mean(ROE, na.rm = TRUE)) %>%
  ggplot() + # パイプ演算子%>%を用いて, 産業別のROE平均値をggplot()関数に引き渡す
  geom_col(aes(x = industry_ID, y = mean_ROE)) + # 棒グラフを描くにはgeom_col()関数を用いる
  labs(x = "Industry ID", y = "Industry Average ROE") + 
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()