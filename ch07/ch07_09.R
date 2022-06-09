# ch07_09: 潜在配当成長率の推定

dividend_yield_2020 %>% 
  left_join(FF3_cost_of_capital, by = "firm_ID") %>% # 株式資本コストの推定値を追加
  mutate(implied_dividend_growth = (cost_of_capital - dividend_yield) / (1 + dividend_yield)) # 配当割引モデルから潜在配当成長率を逆算