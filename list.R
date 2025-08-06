list_var<-list(1,2,3,"hello","anjana")
list_var
list_var[[4]][1]

vect_1<-c("anjana","R","shiny")
vect_2<-c(3:8)
vect_3<-c(TRUE,FALSE)
vect_4<-c(2,3,"Hello")
vect_5<-c(2,78,67,5678)

is.vector(vect_1)
length(vect_2)

main_list<-list(vect_1,vect_2,vect_3,vect_4,vect_5)
common_vector<-c(vect_1,vect_2,vect_3,vect_4,vect_5)
common_list<-as.list(common_vector)
length(common_vector)
length(common_list)
length(main_list)

length(main_list[[1]])

str(main_list)

main_list[[5]][4]
is.list(main_list)
#updating the vectors with names

main_list<-list("Name"=vect_1,age=vect_2,logic=vect_3,string=vect_4,num=vect_5)

  main_list$Name
  second_list<-list(3,4,5)
  
main_list$string[2]

main_list[[3]]

comb_list<-c(main_list,second_list)
is.list(comb_list)
empty_list<-list()

main_list[[6]]<-list(60,69)
main_list$phone<-c(4567,8907654)
main_list$class<-list("firstclass","secondclass")

#access the first class string from the list of main_list
main_list$class[3]<-"third class"

length(main_list)
str(main_list)
summary(main_list)
names(main_list)
