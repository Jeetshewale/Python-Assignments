#1.assign a price for item 'a'
a<-53
a

b<-60
b

#2.calculate the total price of item a and b
a+b

#3.calculate the remaining amount of products left after returned
c<-6
d<-3
c%%d

#4.remove a certain animal from the shop
e<-'cat'
rm(e)

#5.print the sq root of following no of biscuit baked
sqrt(169)

#6.round of the total value of product to nearest number
as.integer(52.3)

#7.print the given number is integer or not
c<-19L
is.integer(c)

#8.print if their is a numeric or not
x<-c('a','b','1')
as.numeric(x)

#9.print a simple matric for construction purpose
m<-matrix(nrow = 2,ncol = 3)
m

#10.print the total number of pencils in list
r<-1:10
r

#11.print the dimension for the above pencil
p<-matrix(1:6,nrow = 3,ncol = 2)
p
dim(p)

#12.print the listed pencil in matrix form
dim(r)<-c(5,2)
r

#13.print a matrix of notebooks of certain count 
t<-1:3
u<-10:12
cbind(t,u)

#14.print the total number of  yes or no of the scale
f<-factor(c('yes','yes','no','yes','no'))
f
table(f)

#15.print the no of products in items arrived from shop in table
h<-factor(c("milk","biscuit","pen","rubber"),levels=c("pen","rubber","milk","biscuit"))
h
table(h)

#16.print the yes or no in the missing list of sweets
k<-c(1,NaN,NA,10,3)
is.na(k)
is.nan(k)

#17.print a data with t or f
l<-data.frame(s=1:4,bar=c(T,T,F,F))
l

#18.print the total no of rows for above
nrow(l)

#19.print the total no of column for above
ncol(l)

#20.print the values in list individually 
i<-list(1,'a',TRUE,1+4i)
i