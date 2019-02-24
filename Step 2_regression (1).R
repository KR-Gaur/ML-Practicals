TrsumSS<-0
TssumSS<-0
TrMSE<-0
TsMSE<-0
p<-0
i<-1
dim(sample1)
for ( i in 1:10)
{
    p=10*i
    TrainingData <- head(sample1,p)
    #TrainingData
    dim(TrainingData)
    lmodel_trainig_data <- lm(y ~ x1 + x2+ x3 + x4 + x5 + x6 + x7, data=TrainingData, x=T, y=T)
    predictedY<-predict(lmodel_trainig_data,TrainingData)
    predictedY
    TrainingData$y
    TestData <- head(sample1,-p )
    Trerror <- abs(TrainingData$y - predictedY)
    #Trerror
    Trsuqarederror<- Trerror * Trerror
    TrsumSS[i]<-sum(Trsuqarederror)
    #TrsumSS[i]
    TrMSE[i]<-mean(Trsuqarederror)
    predictedY<-predict(lmodel_trainig_data,TestData)
    #predictedY
    #TestData$y
    Tserror <- abs(TestData$y - predictedY)
    #Tserror
    Tssuqarederror<- Tserror * Tserror
    TssumSS[i]<-sum(Tssuqarederror)
    #TssumSS[i]
    TsMSE[i]<-mean(Tssuqarederror)
    }
plot(TrsumSS, main="effect of size of training and test error")
lines(x=TrsumSS, y = NULL, type = "l", col="blue")

points(TssumSS,pch=10,col="red")
lines(x=TssumSS, y = NULL, type = "l", col="red")

plot(TrMSE, main="effect of size on training MSE(BLUE) and test MSE(RED)")
     
lines(x=TrMSE, y = NULL, type = "l", col="blue")
points(TsMSE,pch=10,col="red")

lines(x=TsMSE, y = NULL, type = "l", col="red")

     
