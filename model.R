install.packages("caret")
library(caret)

data(iris)

ctrl <- trainControl(method = "cv", number = 5)

model <- train(Species ~ ., data = iris, method = "rf", trControl = ctrl)

print(model)
