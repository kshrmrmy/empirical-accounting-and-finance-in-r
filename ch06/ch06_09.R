# ch06_09: 市場ポートフォリオの累積リターンの可視化 (1)

factor_data %>% 
  mutate(gross_R_M = 1 + R_M, # ネット・リターンをグロス・リターンに換算
         cumulative_gross_R_M = cumprod(gross_R_M)) %>% # グロス・リターンを累積
  ggplot() +
  geom_line(aes(x = month_ID, y = cumulative_gross_R_M)) + 
  labs(x = "Month ID", y = "Cumulative Gross Return") + 
  theme_classic()