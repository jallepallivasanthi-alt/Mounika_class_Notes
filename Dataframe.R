#install the package
#load the package
#use the functions
#install.packages("dplyr")
library(dplyr)
#Data frames
#create a dataframe

emp_age<-c(1,2,45,87)
dep<-c("cse","ece","it","cse")
emp_df<-data.frame(name=c("anjana","sai","vasu","sowji"),
                   age=emp_age,
                   department=dep
                   
                   )
emp_df

dim(emp_df)
class(emp_df)
str(emp_df)
summary(emp_df)

head(emp_df,2)
tail(emp_df,1)
length(emp_df)
names(emp_df)
colnames(emp_df)

library(datasets)
titanic_df<-datasets::Titanic

is.data.frame(titanic_df)
class(titanic_df)
is.table(titanic_df)
head_df<-head(titanic_df)

titanic_df<-as.data.frame(titanic_df)

names(titanic_df)
factor(titanic_df$Class)
factor(titanic_df$Survived)

#load the Ideaths dataset into R
ldeath_df<-datasets::ldeaths
dim(ldeath_df)

class(ldeath_df)

#load the cars datasets into R
cars_df<-datasets::cars
class(cars_df)
dim(cars_df)
head(cars_df)

datasets::discoveries

class(datasets::HairEyeColor)
hair_df<-as.data.frame(datasets::HairEyeColor)
head(hair_df)
View(hair_df)
#exporting the csv
utils::write.csv(hair_df,"input_hair.csv")

#importing the csv from local

input_df<-utils::read.csv("Sample_Application/input_hair.csv")
View(input_df)
#data manipulation using dplyr packages
# check the missing values
# data transformation 
#filter the dataset
#grouping the dataset
#add new column
#join the datasets
#join the datasets using any common column
# delete some rows
#delete some columns
#create a new rows

library(dplyr)
#load the sample data


stats_df<-utils::read.csv("sampledata.csv")
dim(stats_df)
names(stats_df)
head(stats_df)
str(stats_df)
dplyr::sample_n(stats_df,4)
dplyr::distinct(stats_df)


emp_df$grade<-c("A","B","C","A")
emp_df[1,]
emp_df[,1]
emp_df[5,]<-c("anjana",1,"cse","A")
emp_df_unique<-dplyr::distinct(emp_df)

#remove duplicate values based of variable
emp_df_var<-dplyr::distinct(emp_df,department,.keep_all = TRUE)

emp_df_vars<-dplyr::distinct(emp_df,department,grade,.keep_all = TRUE)

emp_df_vars_grade<-dplyr::distinct(emp_df,age,department,.keep_all = TRUE)

#slect the columns from the dataframe

emp_df_select<-select(emp_df,name,grade)
stats_df_drop<-select(stats_df,-Y2004)

stats_df_drop<-select(stats_df,c(-Y2004,-Y2006))

stats_df_starts_df<-select(stats_df,starts_with("Y"))

stats_df_starts_df<-select(stats_df,-starts_with("Y"))

#filer the rows using some conditions

stats_df_filter<-dplyr::filter(stats_df,State == "A")
emp_df_filter<-dplyr::filter(emp_df,department %in% c("cse","it"))

starwars_df<-as.data.frame(starwars)
starwars_df_and_df<-filter(starwars_df, hair_color == "none" & eye_color == "black")

starwars_df_or_df<-filter(starwars_df, hair_color == "none" | eye_color == "black")


#summarise the columns in the dataframe

summarise(startwars_df,height_mean =mean(height))

is.numeric(starwars_df$height)
is.na(starwars_df$height)
anyNA(startwars_df$height)


#handling missing values
#remove missing values
#update the missing values with any number or statistics value

starwars_missing_df<-na.omit(startwars_df)

#remove the missing values based on the variable
install.packages("tidyr")
library("tidyr")
starswars_drop_var_df<-tidyr::drop_na(starwars_df,height)

summarise(starswars_drop_var_df,height_mean =mean(height))

mean(emp_df$age)
is.numeric(emp_df$age)
str(emp_df)
