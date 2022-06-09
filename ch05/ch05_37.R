# ch05_37: 線形・対数モデルによる推定

tidy(lm(Re ~ log(lagged_BEME), data = lm_sample_data)) # 右辺のみlog()関数で自然対数を取る