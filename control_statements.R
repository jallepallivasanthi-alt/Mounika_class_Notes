#conditional statements if else and for loop
# if(expression){
#   statements
#   ....
#   ....
# }
# if(expression){
#   statements
#   ....
#   ....
# }
# else{
#   statements
#   ....
#   ....
# }

num <- 1
if (num > 10) {
  print("number is greater than 10")
} else{
  print("number is less than 10")
}

#For loop
example <- c(1, 2, 33, 4, 52, 64, 73, 8)
for (value in vector) {
  statements
  ....
  ....
}
for (x in example) {
  print(x)
  if (x == 64) {
    print("x is 64")
  } else{
    print("x is not 64")
  }
}
2 * 1 = 2
2 * 2 = 4
2 * 3 = 6
n = 72
for (b in 1:10) {
  print(paste(n, "*", b, "=", n * b))
  
}
paste(n, 146)
df$branch <- NA
for (y in 1:nrow(df)) {
  if (df$id[y] > 13) {
    print("greater")
    df$branch[y] <- "cse"
  }  else{
    print("less")
    df$branch[y] <- "it"
  }
}
df$x4 = ifelse(df$id > 13, 'cse', "it")
new_col <- ifelse(df$gender == "M", "pass", "fail")
new_df_1 <- cbind(new_col, df)
new_df_2 <- rbind(df, c(18, "anjana", "F", "1992-07-21", "AP", "eee", "eee"))
dim(df)
#nested if else function in R
# checking if-else if ladder 
var1<-5
var2<-7
if(var1 > 10 || var2 < 5){ 
print("condition1true block") 
}else{ 
  if(var1 <4 ){ 
    print("condition2") 
  }else{ if(var2>10){ 
      print("condition3") 
  } else{ print("condition4")
  } } }
# ifelse(<condition>, <yes>, ifelse(<condition>, <yes>, <no>)) ifelse(<condition>, ifelse(<condition>, <yes>, <no>), <no>) ifelse(<condition>, ifelse(<condition>, <yes>, <no>), ifelse(<condition>, <yes>, <no>) ) ifelse(<condition>, <yes>, ifelse(<condition>, <yes>, ifelse(<condition>, <yes>, <no>) ) )
#if else functions in R
# Syntax of ifelse() function
ifelse(test, yes, no)
x<-c(2,4,7,8,5)
y<-c(4,6,8,10,2)
ifelse(x>y,print("True"),print("False"))
a<-50
b<-70
ifelse(a<70&&b<80,print(a+b),print(a*b))
# Create dataframe
df=data.frame(id=c(11,22,33,44,55),
              pages=c(32,45,33,22,56),
              name=c("spark","python","R","java","jsp"),
              chapters=c(76,86,11,15,7),
              price=c(144,553,321,567,890))

#display the dataframe
print(df)
#create a column online_source using price greater than 500 assign value amazon if not flipkart
df$online_source<-ifelse(df$price>500&df$pages<30,'amazon',"flipkart")
df_dataset <- df %>%
  mutate(offer= if_else( df$price>500,"Yes", "No"))
df_dataset
