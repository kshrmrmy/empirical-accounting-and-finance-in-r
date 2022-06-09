# ch06_19: CAPMの実証的な検証 (1)

CAPM_results <- list(NA) # 推定結果を保存するために空のリストを準備

for(i in 1:10){
  
  CAPM_results[[i]] <- ME_sorted_portfolio %>% 
    filter(ME_rank10 == i) %>%
    lm(Re ~ R_Me, data = .) %>%
    tidy() %>% 
    mutate(ME_rank10 = i) %>% # 推定対象のポートフォリオ名を保存
    select(ME_rank10, everything()) # ME_rank10を第一列に移動
  
}