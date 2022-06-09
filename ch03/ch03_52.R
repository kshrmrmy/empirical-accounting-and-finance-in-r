# ch03_52: dplyrに含まれるnear()関数

dplyr::near(c(1, 2, 1 + 1e-16), 1) # tidyverse::near()だとエラーになる

## [1]  TRUE FALSE  TRUE