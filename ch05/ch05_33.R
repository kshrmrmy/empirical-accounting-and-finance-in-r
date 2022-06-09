# ch05_33: lm()関数を用いた線形回帰

lm_results <- lm(Re ~ lagged_BEME, data = lm_sample_data) # ~の左に従属変数, 右に独立変数を記す
names(lm_results)

## [1] "coefficients"  "residuals"     "effects"       "rank"       "fitted.values" "assign"        "qr"            "df.residual"       "xlevels"       "call"          "terms"         "model"  