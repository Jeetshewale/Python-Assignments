#data manipulation

#1.clear workspace
rm=(list=ls())


#2.loading data from package 
data("mtcars")
?mtcars

cars<-mtcars

#3.structure of the data
str(cars)

#4.checking for missing values
any(is.na(cars))
sum(is.na(cars))


#5.Fetching top 6 rows
head(cars)

#fetching last 6 rows
tail(cars)

#6.Viewing data
View(cars)

#tibble_df(cars)
as_tibble(cars)
glimpse(cars)

#7.filtering based on single condition
filter(cars,mpg>30)

#8.filtering based on multiple condition
filter(cars,mpg>25 & hp>90)

#9.remove duplicate rows
distinct(cars)

#10.Randomly selecting the fraction of rows
?sample_frac
sample_frac(cars,0.8)

#randomly select no.of .rows
sample_n(cars,5)
slice_sample(cars,n=5)

#11.select rows by position
slice(cars,2.4)
slice(cars,16:20)


#12.selecting single column
select(cars,mpg)


#13.selecting multiple column
select(cars,mpg,gear,cyl)
select(cars,c("mpg","cyl","gear"))

#select all columns between a range of column(inclusive)
select(cars,hp:am)

#14.combing filter and select-using pipe operator
cars %>%
  filter(mpg>18)%>%
  dplyr::select(mpg,am)


#15.selecting columns starting with 'd'
select(cars,starts_with('d'))

#selecting columns ending with 't'
select(cars,ends_with('t'))

#selecting columns containing 'g'
select(cars,contains('g'))

#selecting columns matching regular expression
select(cars,matches('.a'))



#16.arrange the data in ascending order of mpg
arrange(cars,mpg)


cars%>%
  group_by(cyl)%>%
  summarise(mx_mpg=max)

#17.reading from external file
loan_data<-read.csv("example.csv")

#18.print some aggregrator for above csv file
csv_data <- read.csv(file ='sample.csv')
new_csv <- subset(csv_data, department == "HR" & projects <10)
print (new_csv)

#19.editing a csv file
csv_data <- read.csv(file ='sample.csv')
new_csv <- subset(csv_data, department == "HR" & projects <10)
write.csv(new_csv, "new_sample.csv")
new_data <-read.csv(file ='new_sample.csv')
print(new_data)


#20.Querying with csv file
csv_data <- read.csv(file ='sample.csv')
min_pro <- min(csv_data$projects)
print (min_pro)
