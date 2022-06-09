# ch05_31: 簿価時価比率と株式リターンの関係を可視化

lm_sample_data <- annual_data %>% 
  group_by(firm_ID) %>%
  mutate(lagged_BEME = lagged_BE / lag(ME)) %>% # 企業ごとに前年度の簿価時価比率を計算
  ungroup() %>%
  filter(year == 2016, # firm_IDが1から10までの企業の2016年のデータを抽出
         firm_ID <= 10) %>%
  select(firm_ID, year, Re, lagged_BEME) %>% # 必要な列のみ抽出
  drop_na() # 欠損データを削除 

ggplot(lm_sample_data) + 
  geom_point(aes(x = lagged_BEME, y = Re)) + # x軸に簿価時価比率, y軸に超過リターン
  labs(x = "BE/ME at the End of Year t", y = "Excess Return for Year t + 1") + 
  theme_classic()