# ch04_40: 上級デュポン・モデルによるROEの分析

financial_data_DuPont <- financial_data %>% 
  group_by(firm_ID) %>%
  mutate(NOA = OA - OL,
         RNOA = OX / lag(NOA),
         PM = OX / sales,
         ATO = sales / lag(NOA),
         NFO = FO - FA,
         lagged_FLEV = lag(NFO) / lagged_BE,
         NBC = NFE / lag(NFO),
         ROE_DuPont = RNOA + lagged_FLEV * (RNOA - NBC)) %>% # 上級デュポン・モデルに基づき計算したROE
  ungroup()