## 1. Merges the training and the test sets to create one data set.

# read txt files into data frames with read.table
features <- read.table("features.txt", header = FALSE)
labels = read.table("activity_labels.txt", header=FALSE)
train_subject <- read.table("subject_train.txt", header = FALSE)
train_x <- read.table("X_train.txt", header = FALSE)
train_y <- read.table("y_train.txt", header = FALSE)
test_subject <- read.table("subject_test.txt", header = FALSE)
test_x <- read.table("X_test.txt", header = FALSE)
test_y <- read.table("y_test.txt", header = FALSE)


# add column names for measurments, subjects, variabels and labels
names(train_x) <- features[,2]
names(test_x) <- features[,2]
names(train_subject) <- "subject"
names(test_subject) <- "subject"
names(train_y) <- "activity_id"
names(test_y) <- "activity_id"
names(labels)[1]<-"id"
names(labels)[2]<-"activity"


# merge dataframes into one dataset
train <- cbind(train_subject, train_y, train_x)
test <- cbind(test_subject, test_y, test_x)
merged <- rbind(train, test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

selectedcolumns <- grep("(mean|std)\\(\\)|subject|activity", names(merged))
meanstdset <- merged[, selectedcolumns]


## 3. Uses descriptive activity names to name the activities in the data set.
meanstdset <- merge(meanstdset, labels, by.x="activity_id", by.y="id")
meanstdset <- subset(meanstdset, select = -activity_id)


## 4. Appropriately labels the data set with descriptive variable names.
#already done by names(train_x) <- features[,2], names(test_x) <- features[,2]

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melted <- melt(meanstdset, id=c("subject","activity"))
tidy <- dcast(melted, subject+activity ~ variable, mean)
