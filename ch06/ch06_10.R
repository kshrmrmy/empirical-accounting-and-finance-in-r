# ch06_10: 市場ポートフォリオの累積リターンの可視化 (2)

factor_data %>% 
  mutate(gross_R_M = 1 + R_M,
         cumulative_gross_R_M = cumprod(gross_R_M)) %>% 
  select(month_ID, cumulative_gross_R_M) %>% 
  rbind(c(12, 1), .) %>% # 折れ線グラフの始点を追加
  ggplot() +
  geom_line(aes(x = month_ID, y = cumulative_gross_R_M)) + 
  geom_hline(yintercept = 1, linetype = "dotted") + # 元本の水準を点線で図示
  labs(x = "Month ID", y = "Cumulative Gross Return") +
  scale_x_continuous(expand = c(0, 0)) + 
  theme_classic()