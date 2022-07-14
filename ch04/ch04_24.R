# ch04_24: summarize()関数を用いた平均値の計算

financial_data %>% summarize(mean_sales = mean(sales)) # summarize(financial_data, mean_sales = mean(sales))と書いても同じ

# A tibble: 1 x 1
## mean_sales
## <dbl>
##   1    1520.647 （本文165頁では左記のように記していますが，正しくは以下の通りです）
##   1    166027.