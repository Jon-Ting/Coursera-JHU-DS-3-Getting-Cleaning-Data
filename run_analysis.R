# Load activity, subject, feature data sets from test and train
testAct  <- read.table("UCI_HAR_Dataset/test/y_test.txt", header=FALSE)
trainAct <- read.table("UCI_HAR_Dataset/train/y_train.txt", header=FALSE)
testSub  <- read.table("UCI_HAR_Dataset/test/subject_test.txt", header=FALSE)
trainSub <- read.table("UCI_HAR_Dataset/train/subject_train.txt", header=FALSE)
testFea  <- read.table("UCI_HAR_Dataset/test/X_test.txt", header=FALSE)
trainFea <- read.table("UCI_HAR_Dataset/train/X_train.txt", header=FALSE)

# Merge the data sets for train and test sets separately
activity <- rbind(trainAct, testAct)
subject <- rbind(trainSub, testSub)
feature <- rbind(trainFea, testFea)

# Describe the data set and activities with descriptive names
labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", header=FALSE)
activity$V1 <- factor(activity$V1, levels=as.integer(labels$V1), labels=labels$V2)
features_txt <- read.table("UCI_HAR_Dataset/features.txt", head=FALSE)
names(subject) <- "Subject"
names(activity) <- "Activity"
names(feature) <- features_txt$V2
names(feature) <- gsub("^t", "TimeOf", names(feature))
names(feature) <- gsub("^f", "FrequencyOf", names(feature))

# Extract measurements on mean, std along with names and labels
mean_sd <- c(as.character(features_txt$V2[grep("mean\\(\\)|std\\(\\)", features_txt$V2)]))
mean_sd <- gsub("^t", "TimeOf", mean_sd)
mean_sd <- gsub("^f", "FrequencyOf", mean_sd)
mean_sd_data <- subset(feature, select=mean_sd)

# Create tidied data set with mean values
combined_data <- cbind(mean_sd_data, subject, activity)
tidy_data <- aggregate(combined_data, by=list(combined_data$Subject, combined_data$Activity), FUN=mean)
tidy_data <- tidy_data[1:68]
names(tidy_data)[1] <- "Subject"
names(tidy_data)[2] <- "Activity"

# Write out the tidied data
write.table(tidy_data, file="tidy_data.txt", row.name=FALSE)