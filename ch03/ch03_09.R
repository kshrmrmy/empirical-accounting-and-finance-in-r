# ch03_09: 割引率と現在価値の関係を表した図をPNG形式で出力

png("PV.png", 
    pointsize = 12, 
    width = 20, 
    height = 10, 
    units = "cm", 
    res = 200)

plot(x = R, 
     y = PV, 
     xlab = "Discount Rate", 
     ylab = "Present Value",
     type = "l",
     main = "Figure: Effect of Discount Rate on Present Value")

dev.off()