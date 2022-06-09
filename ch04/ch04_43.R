# ch04_43: ATOとPMのトレードオフの可視化

financial_data_DuPont %>% 
  group_by(industry_ID) %>% 
  summarize(industry_median_PM = median(PM, na.rm = TRUE), # 欠損値を除いた上でPMとATOの産業別中央値を計算
            industry_median_ATO = median(ATO, na.rm = TRUE)) %>%
  ggplot() +
  geom_point(aes(x = industry_median_ATO, y = industry_median_PM)) +
  labs(x = "Industry Median ATO", y = "Industry Median PM") +
  theme_classic()