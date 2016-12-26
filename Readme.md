<!-- rmarkdown v1 -->
# Getting and Cleaning Data: Course Project

author: Ion Tecu

date: 26 December 2016

## Introduction

This repository contains my work for the course project in "Getting and Cleaning data" course.

## The raw data

The features are unlabeled and can be found in the X_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt file and similar files can be found in the training folder.

## The script and the tidy dataset

I've created a script called run_analysis.R which will read all the labels, identify the ones that are required for the analysis, read the data only for those columns, modify the label names so they are in a more readable format and merge the test and training sets together.

The Subject number and the Activity columns are transformed as factors and then the tidy dataset "tidy.csv" is created.

## The Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.
