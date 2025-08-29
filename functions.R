#user defined functions
sum<-function(a,b){
  print(a+b)
  print(a-b)
}
a=140
b=60
a+b
sum(40,80)
sum(40)
a-b
dataset<-function(dataset,number){
  print(head(dataset))
  print(tail(dataset,number))
}
dataset(df_dataset,3)
dataset(3,df_dataset)
dataset(number=3,dataset = df_dataset)
person<-function(name,chapters,pages,offer){
  ex<-paste0(name,chapters,pages,offer,"loading")
  print(ex)
}
person(df_dataset[3][2,],df_dataset[4][3,],df_dataset[2][5,],df_dataset[7][1,])
