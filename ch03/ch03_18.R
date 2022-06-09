# ch03_18: 異なる割引率に対してプロジェクトXのNPVを計算した上で折れ線グラフに可視化

R <- seq(0.1, 0.2, length = 11) # 11次元のRベクトルを用意
NPV <- rep(NA, length(R)) # 対応するNPVをNAで初期化（NAは欠損値の意味）

for (i in 1:length(R)) { # 外側のfor文で特定の割引率を固定
  NPV[i] <- -100
  for (j in 1:3) { # 内側のfor文で各年度の将来キャッシュフローの現在価値を累積
    NPV[i] <- NPV[i] + 50 / (1 + R[i])^j
  }
}

plot(x = R, 
     y = NPV, 
     xlab = "Discount Rate",
     ylab = "Present Value", 
     type = "l",
     main = "Figure: Discount Rate and NPV")