# B105 - Applied Statistical Modeling
# Coffee Sales Dataset - R Code Notes
# Source: https://www.kaggle.com/datasets/ihelon/coffee-sales

coffee <- read.csv("~/Downloads/archive (1)/index_1.csv", header=TRUE)


head(coffee)
str(coffee)
colSums(is.na(coffee))
sum(coffee$card == "")
table(coffee$cash_type)


coffee$date <- as.Date(coffee$date)
coffee$datetime <- as.POSIXct(coffee$datetime)
coffee$weekday <- weekdays(coffee$date)
coffee$day_type <- ifelse(coffee$weekday %in% c("Saturday", "Sunday"), "Weekend", "Weekday")
coffee$hour <- as.numeric(format(coffee$datetime, "%H"))
str(coffee)

summary(coffee$money)
sd(coffee$money)

tapply(coffee$money, coffee$cash_type, mean)
tapply(coffee$money, coffee$cash_type, sd)

sort(table(coffee$coffee_name), decreasing = TRUE)
table(coffee$hour)


boxplot(money ~ cash_type, data = coffee,
        main = "Spending by Payment Type",
        xlab = "Payment Type", ylab = "Amount")

hist(coffee$money,
     main = "Distribution of Transaction Amount",
     xlab = "Amount", col = "lightblue")

barplot(sort(table(coffee$coffee_name), decreasing = TRUE),
        main = "Number of Sales by Coffee Type",
        las = 2, col = "coral")
