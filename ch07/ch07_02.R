# ch07_02: FF3モデルの推定 (1)

firm_ID_set <- unique(monthly_data$firm_ID) # firm_IDの固有要素を抽出
N_firms <- length(firm_ID_set) # firm_ID_setの要素数をカウント

monthly_data <- monthly_data %>% 
  select(-R_F) %>% # R_Fはmonthly_dataとfactor_dataで重複するので削除
  full_join(factor_data, by = "month_ID")

FF3_results <- list(NA) # 推定結果を保存するために空のリストを準備

for (i in 1:N_firms) {
  
  FF3_results[[i]] <- monthly_data %>% 
    filter(firm_ID == firm_ID_set[i]) %>%
    lm(Re ~ 0 + R_Me + SMB + HML, data = .) %>% # 冒頭に"0 +"を追加して定数項をゼロに
    tidy() %>% 
    mutate(firm_ID = firm_ID_set[i]) %>% # 推定対象のfirm_IDを保存
    select(firm_ID, everything())
    
}

FF3_results <- do.call(rbind, FF3_results) # do.call()関数を用いて複数のデータフレームから構成されるリストを一つのデータフレームに統合