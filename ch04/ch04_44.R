# ch04_44: ATOとPMが反比例するグラフを追加

median_RNOA <- median(financial_data_DuPont$RNOA, na.rm = TRUE) # 欠損値を除く全データに関してRNOAの中央値を計算

financial_data_DuPont %>% 
  group_by(industry_ID) %>% 
  summarize(industry_median_PM = median(PM, na.rm = TRUE),
            industry_median_ATO = median(ATO, na.rm = TRUE)) %>%
  ggplot() +
  geom_point(aes(x = industry_median_ATO, y = industry_median_PM)) +
  labs(x = "Industry Median ATO", y = "Industry Median PM") +
  theme_classic() + 
  stat_function(fun = function(x) median_RNOA / x, linetype = "longdash") # グラフに関数を書き込むにはstat_function()関数を用いる