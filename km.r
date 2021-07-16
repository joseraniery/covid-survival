library("survival")
survData <- read.csv("feature.csv")
survtest <- survdiff(Surv(survData$time, survData$event) ~ survData$group, data=survData)
1 - pchisq(survtest$chisq, 1)
