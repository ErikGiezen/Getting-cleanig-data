# Peer Graded Assignment: Getting and Cleaning Data Course Project
Th run_analysis.R scipt is part of de Peer Graded Assignment of de Getting and Cleaning Data Course. The goal of the assingment is to make the data tidy an do some analysis.

##Preparing
  <ol>
    <li>Download the zip file from <a     href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">here</a>.</li> 
    <li>Unzip the file</li> 
    <li>Move the folowing files to the same folder as the R script:</li>
  <ul><ul>
    <li>\UCI HAR Dataset\features.txt</li>
    <li>\UCI HAR Dataset\labels.txt</li>
    <li>\UCI HAR Dataset\train\subject_train.txt</li>  
    <li>\UCI HAR Dataset\train\X_train.txt</li>
    <li>\UCI HAR Dataset\train\y_train.txt</li>
    <li>\UCI HAR Dataset\test\subject_test.txt</li>
    <li>\UCI HAR Dataset\test\X_test.txt</li>
 	  <li>\UCI HAR Dataset\test\y_test.txt</li>
 	</ul></ul>
 	  <li>Have the reshape2 package installed</li>
 	</ol><br/>
 	
 	
Then you can run the r script wich wil:
<ul>
<li>read al the text files into dataframes
<li>ad column names to the dataframes
<li>combine the dataframes to one dataset
<li>select the mean, stdev, subject and activity_id colums
<li>tidy the data by adding values for activities an variables
<li>create a second, independent tidy data set with the average of each variable for each activity and each subject
</ul>

The result of the script is a printed text file called eind.txt. Eind being the Dutch wordt for finished.
</ul>

 	
 	
  
