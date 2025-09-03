# Create Emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  superior_emp_id=c(-1,1,1,2,2,2),
  dept_id=c(10,20,10,10,40,50)
)

# Create dept Data Frame
dept_df=data.frame(
  dept_id=c(10,20,30,40),
  dept_name=c("Finance","Marketing","Sales","IT")
)

emp_df
dept_df
merge_df<-merge(x=emp_df,y=dept_df,by='dept_id')
merge_df
merge_1df<-merge(y=emp_df,x=dept_df,by='dept_id')
merge_1df
#innerjoin
df2 = emp_df %>% inner_join(dept_df, by = "dept_id")
df2
# https://sparkbyexamples.com/r-programming/r-join-data-frames-with-examples/
#left join
left_joindf<-left_join(x=emp_df,y=dept_df,by='dept_id')
left_joindf
right_joindf<-right_join(x=emp_df,y=dept_df,by='dept_id')
right_joindf
full_joindf<-full_join(x=emp_df,y=dept_df,by='dept_id')
full_joindf
