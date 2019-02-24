sumSS <-0

sample1=read.table("my_data.txt")

p <- lm(y ~ sample1$x1,data=sample1, x=T, y=T)
print(p)

predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[1]<-sum(suqarederror)
# y as x2
p <- lm(y ~ sample1$x2,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[2]<-sum(suqarederror)
# y as x3
p <- lm(y ~ sample1$x3,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[3]<-sum(suqarederror)
# y as x4
p <- lm(y ~ sample1$x4,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[4]<-sum(suqarederror)

# y as x5
p <- lm(y ~ sample1$x5,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[5 ]<-sum(suqarederror)

# y as x6
p <- lm(y ~ sample1$x6,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[6]<-sum(suqarederror)
# y as x7
p <- lm(y ~ sample1$x7,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[7]<-sum(suqarederror)

##y as x1+x2
p <- lm(y ~ sample1$x1+sample1$x2,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[8]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 & x2", col="blue")
points(sample1$y,pch=15, col="red")
##y as x1+x2+x3
p <- lm(y ~ sample1$x1+sample1$x2+sample1$x3,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[9]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 x2 and x3", col="blue")
points(sample1$y,pch=15, col="red")
##y as x1+x2+x3+x4
p <- lm(y ~ sample1$x1+sample1$x2+sample1$x3+sample1$x4,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[10]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 x2 x3 and x4", col="blue")
points(sample1$y,pch=15, col="red")
##y as x1+x2+x3+x4+x5
p <- lm(y ~ sample1$x1+sample1$x2+sample1$x3+sample1$x4+sample1$x5,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[11]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 x2 x3 x4 and x5", col="blue")
points(sample1$y,pch=15, col="red")
##y as x1+x2+x3+x4+x5+x6+x7
p <- lm(y ~ sample1$x1+sample1$x2+sample1$x3+sample1$x4+sample1$x5+sample1$x6,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[12]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 x2 x3 x4 x5 and x6", col="blue")
points(sample1$y,pch=15, col="red")
plot(sumSS)

##y as x1+x2+x3+x4+x5+x6+x7
p <- lm(y ~ sample1$x1+sample1$x2+sample1$x3+sample1$x4+sample1$x5+sample1$x6+sample1$x7,data=sample1, x=T, y=T)
print(p)
predictedY<-predict(p,sample1)
print(predictedY)
error<-abs(sample1$y-predictedY)
plot(error)
suqarederror<- error * error
plot(suqarederror)
sumSS[13]<-sum(suqarederror)
plot(predictedY,xlab="y as x1 x2 x3 x4 x5 x6 and x7", col="blue")
points(sample1$y,pch=15, col="red")
plot(sumSS,type = "l")