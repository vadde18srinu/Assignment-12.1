setwd("F:/AcadGild/workings")

1. Use the given link Data Set.

Answer the below questions:
  
(a). Perform ANOVA test on the discriminant analysis scores of nuclear localization signals of both nuclear
and non-nuclear proteins by class variables (Target).


# Importing data.    
library(readr)
library(ggplot2)

df<-read.table("https://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.data", header = FALSE)
View(df)

summary(df)
str(df)
nrow(df)
class(df)
names(df)
summary(df)
str(df)

table(df$V10)


#anova test
anova<-lm(V9~V10, data=df)
anova
summary(anova)

# Anova t-test for two means 
data<-t.test(df$V9,df$dfV10)
data

(b). Which class is significantly different from others?

  t.test(df$V7,df$dfV10)  
  
  
  
  