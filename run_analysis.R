library(reshape2)

file_name <- "files_activity.zip"

if (!file.exists(file_name)){
  file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(file_url, file_name,mode='wb')
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(file_name) 
}

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

features_required <- grep(".*mean.*|.*std.*", features[,2])
features_required_names <- features[features_required,2]
features_required_names = gsub('-mean', 'Mean', features_required_names)
features_required_names = gsub('-std', 'Std', features_required_names)
features_required_names <- gsub('[-()]', '', features_required_names)

train <- read.table("UCI HAR Dataset/train/X_train.txt")[features_required]
train_activities <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train_subjects, train_activities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[features_required]
test_activities <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test_subjects, test_activities, test)

all <- rbind(train, test)
colnames(all) <- c("SubjectNo", "Activity", features_required_names)

all$Activity <- factor(all$Activity, levels = activity_labels[,1], labels = activity_labels[,2])
all$SubjectNo <- as.factor(all$SubjectNo)

mean_all <- dcast(melt(all, id = c("SubjectNo", "Activity")), SubjectNo + Activity ~ variable, mean)

write.table(mean_all, "tidy.txt", row.name=FALSE, quote = FALSE)