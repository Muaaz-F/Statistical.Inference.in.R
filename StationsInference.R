# Question 2

Station1 = c(5030, 13700, 10730, 11400, 860, 2200, 4250, 15040, 4980, 11910, 8130, 26850,17660, 22800, 1130, 1690)
Station2 = c(2800, 4670, 6890, 7720, 7030, 7330, 2810, 1330, 3320, 1230, 2130, 2190)

boxplot(Station1,Station2,range=1.5,horizontal=T,col= c("blue","Red"),names=c("Station1","Station2"),main="Box Plot for Stations 1 & 2",xlab="number of organisms")

#Interpretation
# The Blue Box Plot is of Station 1 and it is slighly skewed towards the right. It has no outliers.
# The Red Box plot is of Station 2 and it is heavily skewed towards the left.I t has no outliers as well.
# The variance in station 1 less than the variance i station2

#Checking if the Variances are equal in both the stations
#Ho : Var1 = Var2

var.test(Station1,Station2)

#Interpretation
# The P-Value < Alpha i.e, 0.000452 < 0.05
#Therefore, rejecting Null Hypothesis i.e., Variances are not equal.

# Now because the standard deviation are not equal, using a T-Test
# And assuming sample comes from normal population as given in question
# Ho mu1 = mu2

t.test(Station1,Station2)

#Interpretation
#The P-Value is less than the Alpha i.e., 0.01261 < 0.05
# Therefore Rejecting the Null Hypothesis of mu1 = mu2
# The two means are significantly different at 95% Confidence