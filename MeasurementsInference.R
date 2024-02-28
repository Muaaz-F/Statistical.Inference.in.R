# Question 3

Measurements = c(3.4, 2.5, 4.8, 2.9, 3.6, 2.8, 3.3, 5.6, 3.7, 2.8, 4.4, 4.0, 5.2, 3.0, 4.8)

# Part a

qqnorm(Measurements)

# As seen from the plot, it seems to be a Normal DIstribution

shapiro.test(Measurements)

# Ho Normality True
# The P-Value is not less than the Aplha i.e., 0.3076 > 0.05
# Therefore, not rejecting Ho and the Normality Holds true

# Part b

# Alpha from Question is 0.1
# Ho : mu = 3.5
# Ha : mu not equal to 3.5
# Population Standard Deviation is unknown, so using a t-test for testing

t.test(x=Measurements, mu= 3.5,alternative = "two.sided",conf.level = 0.10)

#Interpretation
#Rejecting Ho
# The P-Value is less than the Alpha i.e., 0.272 > 0.1
# The True mean is not equal to 3.5

# By Critical Region Method

qt(0.1/2,df=14,lower.tail = T)

# The to is greater than talpha/2,df=14 i.e., 1.1435 > -1.76131
# Therefore, rejecting Ho

# Using T Test for building the Confidence Interval

# Part c

t.test(Measurements, mu = 3.5, conf.level = 0.1)

# As given by R Software the Confidence interval is (3.755,3.819)
# And the clear 3.5 is not in the interval. So rejecting Ho.
# Same Conclusion as in b by critical region and P-Value

