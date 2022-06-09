# ch06_30: 6 Size-BE/MEポートフォリオへの分類 (2)

annual_data <- annual_data %>%
  mutate(FF_portfolio_type = fct_recode(FF_portfolio_type, 
                                        SL = "1.1",
                                        BL = "2.1",
                                        SN = "1.2",
                                        BN = "2.2",
                                        SH = "1.3",
                                        BH = "2.3")) # FF_portfolio_typeの水準を変更