# Name: Muaaz Faiyazuddin
# UTA ID: 1001949623

# Assignment 4

#Problem 1

data.score = read.table("score.txt", header = TRUE)
data.score
installed.packages("car")
library(car)
scatterplotMatrix(data.score)

#Comments
# The diagonal cells are density plots and the off-diagonal cells are the scattered plots.
# The off-diagonal cells are scattered and random because there is not much correlation.
# Exam_Score : Cell (1,1) is skewed right
# Aptitude_Measure Cell (2,2) is also skewed right
# Age : Cell(3,3) seems to Normal in Bell Shaped Distribution
# Intelligence : Cell(4,4) is in Bi-Modal Distribution
# Attention Span : Cell(5,5) is MultiModal Distribution

cov(data.score)
#Comments
# The Diagonal Elements of the Matrix are Variances and can be observed that all are positive
# The Off Diagonal Elements of the Matrix are the Covariances. While most of them are negative, there are some positive covariances.
# This means there's joint variability of some Variables. (Aptitude - Score)

cor(data.score)
#Comments
#The diagonal elements of the Correlation Matrix are all "1" which means there is perfect positive correlation.
# The off diagonal elements shows how much do the variables relate. As observed the highest off diagonal correlation is 0.3 which Exam Score - Aptitude.

sapply(data.score, mean)
# Comments
# The means are not comparable. T - Test can be done for the comparison of the means.

boxplot(data.score[,1],data.score[,4],range = 1.5, horizontal = T, col = c("Blue","Red"), main = "Box Plots for Exam Score and Intelligence")
#Comments
# The Blue is the Boxplot of Exam Scores and it seems to be symmetric
# The red is the Boxplot of the Intelligence_Score which seems to be heavily Right Skewed and has three outliers.

