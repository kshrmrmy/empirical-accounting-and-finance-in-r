# ch06_01: tidyverseとデータの読み込み

library(tidyverse)
library(broom)

monthly_data <- read_csv("ch05_output1.csv")
annual_data  <- read_csv("ch05_output2.csv")