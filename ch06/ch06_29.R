# ch06_29: 6 Size-BE/MEポートフォリオへの分類 (1)

annual_data <- annual_data %>%
  mutate(FF_portfolio_type = interaction(ME_rank2, BEME_rank3)) # ME_rank2とBEME_rank3の組合せで, ファクター型の変数FF_portfolio_typeを定義