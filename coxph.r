library('survival')
data <- read.csv("feature.csv")
fit.coxph <- coxph(Surv(time, event) ~ group, data = data)
summary(fit.coxph)
