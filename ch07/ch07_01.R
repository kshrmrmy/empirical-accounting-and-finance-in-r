# ch07_01: 外部パッケージの読み込みとデータの準備

library(tidyverse)
library(broom)

monthly_data <- read_csv("ch05_output1.csv")
annual_data  <- read_csv("ch05_output2.csv")
factor_data <- read_csv("ch06_output.csv")

monthly_data <- monthly_data %>% 
  group_by(firm_ID) %>% # firm_IDでグループ化
  mutate(is_public_2020 = (max(month_ID) == 72), # 2020年の年末時点で上場しているかフラグ付け
         N_observations = n()) %>% # 各firm_IDのデータ数をカウント
  ungroup() %>% 
  filter(is_public_2020 == TRUE, # 2020年の年末時点で上場しているfirm_IDを抽出
         N_observations >= 36) %>% # 36ヶ月以上のデータがあるfirm_IDを抽出
  select(-N_observations) # N_observations列を削除

annual_data <- monthly_data %>% # monthly_dataに含まれるyearとfirm_IDのペアを抽出
  select(year, firm_ID) %>% 
  unique() %>%
  left_join(annual_data, by = c("year", "firm_ID")) # annual_dataとmonthly_dataでyearとfirm_IDのペアを整合的に