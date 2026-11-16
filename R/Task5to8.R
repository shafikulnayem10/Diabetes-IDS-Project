
data <- read.csv("diabetes_dataset.csv", header = TRUE)



data$bmi_normalized <- (data$bmi - min(data$bmi)) /
  (max(data$bmi) - min(data$bmi))

summary(data$bmi_normalized)


sum(duplicated(data))

data <- data[!duplicated(data), ]

sum(duplicated(data))




filtered_data <- data[data$age >= 40 & data$bmi >= 25, ]

nrow(filtered_data)

head(filtered_data)





invalid_data <- data[data$systolic_bp <= data$diastolic_bp, ]

nrow(invalid_data)

cleaned_data <- data[data$systolic_bp > data$diastolic_bp, ]

nrow(cleaned_data)