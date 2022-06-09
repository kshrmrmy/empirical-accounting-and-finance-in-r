# ch06_41: FF3アルファの統計的な有意性を評価

FF3_results %>% 
  filter(term == "(Intercept)") %>% # 定数項に関する推定結果のみを抽出
  rename(FF3_alpha = estimate, p_value = p.value) %>% # 列名を変更
  mutate(significance = cut(p_value,
                            breaks = c(0, 0.01, 0.05, 0.1, 1), 
                            labels = c("***", "**", "*", ""), 
                            include.lowest = TRUE)) %>% # 統計的に有意な結果を*で強調
  select(ME_rank10, FF3_alpha, p_value, significance) # 出力したい列を指定