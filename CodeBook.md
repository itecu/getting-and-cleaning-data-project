<!-- rmarkdown v1 -->

# Code Book

This code book summarizes the resulting data fields in tidy.csv.

# The identifiers are

These corespond to the first two columns

* SubjectNo - The ID of the test subject
* Activity - The type of activity performed when the corresponding measurements were taken

# Measurements

These are the folowing columns. I concatenated Y and Z to the name but in fact there are 3 columns with X, Y and Z 
respectively.

* tBodyAccMeanXYZ
* tBodyAccStdXYZ
* tGravityAccMeanXYZ
* tGravityAccStdXYZ
* tBodyAccJerkMeanXYZ
* tBodyAccJerkStdXYZ
* tBodyGyroMeanXYZ
* tBodyGyroStdXYZ
* tBodyGyroJerkMeanXYZ
* tBodyGyroJerkStdXYZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanXYZ
* fBodyAccStdXYZ
* fBodyAccMeanFreqXYZ
* fBodyAccJerkMeanXYZ
* fBodyAccJerkStdXYZ
* fBodyAccJerkMeanFreqXYZ
* fBodyGyroMeanXYZ
* fBodyGyroStdXYZ
* fBodyGyroMeanFreqXYZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq

## Activity Labels

These are the explanations for these labels:

* WALKING : subject was walking during the test
* WALKING_UPSTAIRS : subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS : subject was walking down a staircase during the test
* SITTING : subject was sitting during the test
* STANDING : subject was standing during the test
* LAYING : subject was laying down during the test
