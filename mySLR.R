# Simple Linear Regression

# Importing the dataset
dataset = read.csv('input.csv')

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
 

split = sample.split(dataset$at_bats, SplitRatio = 2/3)

training_set = subset(dataset, split == TRUE)
#split included
test_set = subset(dataset, split == FALSE)
#split not included

training_set = training_set[,c("runs","at_bats")]
test_set = test_set[,c("runs","at_bats")]

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = runs~at_bats,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
))
# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$at_bats, y = training_set$runs),
             colour = 'red') +
  geom_line(aes(x = training_set$at_bats, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('runs vs at_bats (Training set)') +
  xlab('at_bats') +
  ylab('runs')

# Visualising the Test set results
ggplot() +
  geom_point(aes(x = test_set$at_bats, y = test_set$runs),
             colour = 'red') +
  geom_line(aes(x = training_set$at_bats, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('runs vs at_bats (Test set)') +
  xlab('at_bats') +
  ylab('runs')
