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

