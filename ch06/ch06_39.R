# ch06_39: FF3モデルの推定

ME_sorted_portfolio <- ME_sorted_portfolio %>%
  select(-c(R_Me, R_M)) %>%
  full_join(factor_data, by = "month_ID") # 3ファクターの実現値をME_sorted_portfolioに追加

FF3_results <- list(NA)  # 推定結果を保存するために空のリストを準備

for(i in 1:10) {
  FF3_results[[i]] <- ME_sorted_portfolio %>% 
    filter(ME_rank10 == i) %>%
    lm(Re ~ R_Me + SMB + HML, data = .) %>% # 3ファクターの実現値を独立変数として重回帰
    tidy() %>% 
    mutate(ME_rank10 = i) %>% # 推定対象のポートフォリオ名を保存
    select(ME_rank10, everything()) # ME_rank10を第一列に移動
}

FF3_results <- do.call(rbind, FF3_results) # do.call()関数を用いて複数のデータフレームから構成されるリストを一つのデータフレームに統合