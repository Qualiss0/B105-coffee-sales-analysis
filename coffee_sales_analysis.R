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
