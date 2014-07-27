
##subset columns - list of features with 'mean' or 'std'
features <- read.csv("features.txt", sep=" ", header=FALSE, col.names=c("featureId", "featureName"))
meanstdFeatures <- subset(features, grepl("mean|std", featureName, ignore.case=TRUE))

# read X_test
xTest <- read.table("X_test.txt", header=FALSE)

#select columns/features with mean and std in name
meanstdTestX <- xTest[, meanstdFeatures$featureId]

#create readable column names
names(meanstdTestX) <- meanstdFeatures$featureName

# read y_test
yTest <- read.table("y_test.txt", header=FALSE)
names(yTest) <- "activityId"

testFinal <- cbind(yTest,meanstdTestX)

# Do the same for Train dataset - just as we did for Test

xTrain <- read.table("X_train.txt", header=FALSE)

#select columns/features with mean and std in name
meanstdTrainX <- xTrain[, meanstdFeatures$featureId]

#create readable column names
names(meanstdTrainX) <- meanstdFeatures$featureName

# read y_train
yTrain <- read.table("y_train.txt", header=FALSE)
names(yTrain) <- "activityId"

## cbind Y_test to  X_test and Y_train to  X_train
trainFinal <- cbind(yTrain,meanstdTrainX)

# combine test and train dataset
combinedData <- rbind(testFinal,trainFinal)

## lookup readable names for activityId
activityLkp <- read.table("activity_labels.txt", col.names=c("activityId","activityName"))

## output final dataset
tidyFinal <- merge(activityLkp, combinedData)

write.table(tidyFinal, file="tidyData.txt", row.names=FALSE)

