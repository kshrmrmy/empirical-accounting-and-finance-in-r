# ch06_38: SMBとHMLの構築 (2)

factor_data <- FF_portfolio %>%
  mutate(SMB = (SH + SN + SL) / 3 - (BH + BN + BL) / 3, # SMBとHMLを計算
         HML = (SH + BH) / 2 - (SL + BL) / 2) %>%
  select(month_ID, SMB, HML) %>%
  full_join(factor_data, by = "month_ID") %>% # 3ファクターの実現値をfactor_dataに集約
  select(-c("SMB", "HML"), c("SMB", "HML")) # SMBとHMLを最後列に移動