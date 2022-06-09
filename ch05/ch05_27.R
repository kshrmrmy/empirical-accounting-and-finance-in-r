# ch05_27: firm_IDが1の企業の月次超過リターンをヒストグラムで可視化

stock_data %>%
  filter(firm_ID == 1) %>% 
  ggplot() + 
  geom_histogram(aes(x = Re)) + 
  labs(x = "Firm 1's Monthly Excess Return", y = "Count") +
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()