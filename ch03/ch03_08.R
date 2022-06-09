# ch03_08: 割引率と現在価値の関係を表した図の見栄えを改善

PV <- 100 / (1 + R)
plot(x = R,
     y = PV, 
     xlab = "Discount Rate",
     ylab = "Present Value",
     type = "l",
     main = "Figure: Effect of Discount Rate on Present Value")