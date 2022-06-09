# ch08_01: 外部パッケージとデータの読み込み

library(tidyverse)
library(broom)

return_data <- read_csv("ch08_return_data.csv")
market_return_data <- read_csv("ch08_market_return_data.csv")
event_data <- read_csv("ch08_event_data.csv")

head(return_data) # 各データの冒頭を確認
head(market_return_data)
head(event_data)