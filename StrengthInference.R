# Question 7

data.stren = read.table("Strength.txt", header=T)

plot(data.stren$Dynamic_Lift,data.stren$Arm_Strength)

linear.reg = lm(Dynamic_Lift ~ Arm_Strength,data.stren)

summary(linear.reg)

# m = 0.5609 b = 64.5292

# y = 0.5609x + 64.5292
y = 0.5609*35 + 64.5292
y

# therefore the estimate for y when x = 35 is "84.1607"

res = linear.reg$residuals
fitted = linear.reg$fitted.values

# As the slope is positive, there is a positive linear relationship between x & y

shapiro.test(res)
plot(res)
plot(fitted,res)

cor(data.stren$Dynamic_Lift,data.stren$Arm_Strength)

# THis shows very less relationship between te variables

# The intercept b is 64.5292 which is a big number
# The intercept terms must be included in the model, because not having it will give values of y that aren't true.

# The Value of RSquared obtained in 0.1534 and the adjusted SQuared is 0.1166
# The Value of RSquared is very less which means there is very less quality of the fit.
