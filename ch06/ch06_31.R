# ch06_31: 6 Size-BE/MEポートフォリオへの分類 (3)

annual_data %>% 
  group_by(ME_rank2, BEME_rank3) %>% # ME_rank2とBEME_rank3のペアでグループ化
  summarize(FF_portfolio_type = FF_portfolio_type[1],
            mean_BEME = mean(lagged_BEME),
            mean_ME = mean(lagged_ME),
            mean_N_stocks = n() / length(unique(year))) %>%
  ungroup() %>%
  drop_na() # 欠損データを削除