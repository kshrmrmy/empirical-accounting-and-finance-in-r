# ch06_25: 証券市場線の推定

ME_cross_sectional_return <- CAPM_results %>% 
  filter(term == "R_Me") %>% # R_Meの係数に関する推定結果のみを抽出
  rename(CAPM_beta = estimate) %>% # 推定値をestimateからCAPM_betaに名称変更
  select(ME_rank10, CAPM_beta) %>%
  mutate(ME_rank10 = as.factor(ME_rank10)) %>% # ME_rank10を整数型からファクター型に
  full_join(ME_cross_sectional_return, ., by = "ME_rank10") # 超過リターンのデータと結合

mean_R_Me <- mean(factor_data$R_Me) # 市場ポートフォリオの実現超過リターンにより証券市場線の傾きを推定

ggplot(ME_cross_sectional_return) +
  geom_point(aes(x = CAPM_beta, y = mean_Re)) +
  geom_abline(intercept = 0, slope = mean_R_Me) +
  labs(x = "Market beta", y = "Mean Excess Return") + 
  scale_x_continuous(limits = c(0, 1.2), expand = c(0, 0)) + 
  scale_y_continuous(limits = c(0, 0.02)) + 
  theme_classic()