data=read.csv(file="C:/Users/Manjunath/Desktop/DS_Mrinal/Assignment/Assignment/MBA Starting Salaries Data.csv",header = T)
names(data)
str(data)
head(data)


hist(data$age) 
#age is not normally distrubuted
#right skewed

summary(data$gmat_tot)
hist(data$gmat_tot)
#the scores are normally distributed

sub_0=subset(data,data$salary!=999 & data$salary!=998)
sub_no_0=subset(data,data$salary!=999 & data$salary!=998 & data$salary!=0)


library(ggplot2)

qplot(sub_0$salary, geom="histogram")
qplot(sub_no_0$salary, geom="histogram")

summary(sub_no_0$salary)

#modalclass is around  100000

mean(subset(sub_no_0$salary,sub_no_0$satis==7))
#98531.82
sd(subset(sub_no_0$salary,sub_no_0$satis==7))
#12847.14

mean(subset(sub_no_0$salary,sub_no_0$satis==6))
#105364.2
mean(subset(sub_no_0$salary,sub_no_0$satis==5))
#102974.3

mean(subset(sub_no_0$salary,sub_no_0$satis!=7))
#104252.7
sd(subset(sub_no_0$salary,sub_no_0$satis!=7))
#18886.42


#Are highest salaries drawn by the highest 'satis' (7) students only
#NO




