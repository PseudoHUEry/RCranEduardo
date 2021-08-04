
classify_data = classify_mature(table, varNames = c("cm", "total"), 
                                varSex = "sex", selectSex = NULL, method = "ld")
par(mfrow = c(2,2))
plot(classify_data)

plot(classify_data, xlab = "cm (mm.)", ylab = "total (mm)", legendPlot = FALSE)
legend("Centimetros", "%", bty = "n")

plot(classify_data, xlab = "cm (mm.)", ylab = "total (mm)", 
     col = c(2, 3), pch = c(5, 6), legendPlot = TRUE)

plot(classify_data, xlab = "cm (mm.)", ylab = "total (mm)", 
     col = c(2, 3), pch = c(5, 6), lty_lines = c(1, 2), lwd_lines = c(1, 3), 
     cex = c(1, 3), main = "Classification")


my_ogive_fq = morph_mature(classify_data, method = "fq", niter = 1000)

print(my_ogive_fq)

my_ogive_bayes = morph_mature(classify_data, method = "bayes", niter = 1000)

print(my_ogive_bayes)

par(mfrow = c(2,2))
plot(my_ogive_bayes, xlab = "cm (mm.)", ylab = "L50", col = c("blue", "red"))


plot(my_ogive_fq, xlab = "cm (mm.)", ylab = "L50", col = c("blue", "red"), onlyOgive = TRUE)


