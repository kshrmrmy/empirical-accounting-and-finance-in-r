# ch08_08: マーケット・モデルの推定 (1)

estimation_window_data <- full_sample_data %>% 
  filter(relative_days < -N2)  # 推定期間のデータのみ抽出

market_model_results <- list(NA) # 推定結果を保存するために空のリストを準備

for (i in 1:N_events) {
  
  lm_results <- estimation_window_data %>% 
    filter(event_ID == i) %>%
    lm(R ~ R_M, data = .)  # マーケット・モデルの推定
  
  tidied_lm_results <- lm_results %>%
    tidy() %>% 
    mutate(event_ID = i) %>% # 推定対象のイベントIDを保存  
    select(event_ID, everything()) # event_IDを第一列に移動
  
  tidied_lm_results$sigma_AR <- glance(lm_results)$sigma # マーケット・モデルの推定により得られた残差の標準誤差を抽出してsigma_ARと保存
  
  market_model_results[[i]] <- tidied_lm_results # リストの一要素として推定結果を保存     

}

market_model_results <- do.call(rbind, market_model_results) # do.call()関数を用いて複数のデータフレームから構成されるリストを一つのデータフレームに統合