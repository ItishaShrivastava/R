## Logical <- directly assign capital T or F for true or False
## Character string <- use double quotes or can directly print using print function.
## class() <- to check the data type of function and add argument in the parenthesis
## Vector <- It is one dimension array which holds character, numeric and logical values
## When mixed data is being passed into the vector it will convert it into a single data type.
## Hence, we shouldn't be mixing the data types into single vector use list for it.
## names(vector_name) <- c(name for values of vector) using this fuction we can give names to the values of vector
days <- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun')
names(temps) <- days
temps
output <- Mon  Tue  Wed Thur  Fri  Sat  Sun <NA> 
          76   45   34   56   78   43   23   43 
##prod(), mean(),v1[c(1,3)],v1[2] + v1[3], v[1:4], 1:10 (print no. 1 to 10),matrix(v <- 1:10)
## matrix(v, nrow = 2) nrow is the number of rows into the matrix
## matrix(1:12, byrow = FALSE, nrow = 4) -> byrow means divide the number according to the columns first
##  colnames(stocks) <- days , rownames(stocks) <- st.names defines names of rows and columns into the matric
## colSums(stocks) <- column sums, rowSums(stocks) <- row sums
## rowMeans(), rbind() <- to bind the rows into the matrix, cbind() <- to bind the columns
## matrix_new[,],matrix_new[1,]
## runif(n, min = ,max =) provide n no. between 0 to 100
## str(), summary() - summary of each columns in data frame
## data.frame() <- collection of rows and columns
## data.frame[, column_name], dara.fram$column_name
## subset(df, subset = rain == TRUE) <- fetch all the data whose condition is TRUE
## subset(df, subset = temp < 876) <- use comparision operator to compare values into the subset
## sorted.temp <- order(df['temp']) <- sort the column by default ascending
## sorted.temp <- order(-df['temp']) <- for sorting in deacreasing order
## data.frame(col.name.1 = c1, col.name.2 = c2) <- to give the columns name
## df[2,'col.name.1'] <- 9999 - to allocate the new value on 2nd row column 1
## Three ways to fetch the data <- df$column_name, df['column_name'], df[['column_name']]
## mtcars['mpg'] <- all rows with mpg column
## mtcars[c('mpg','cyl')] <- to print two columns with all rows
## df$newcol <- 2*df$col.name.1 <<- to add new column with double value of col 1
## mtcars[mtcars$mpg > 29,] <- to filter out mpg value alo ng with the comparision
## mtcars[(mtcars$mpg > 20) & (mtcars$cyl==6) , ]
## subset(mtcars,mpg > 20 & cyl == 6) <- will give same results as previous one
## is.na <- to check if there is any missing data into the data frame
## any(is.na(mtcars)) <- to check if any missing value is present directly
## mtcars$mpg[is.na(mtcars$mpg)] <- 0 for replacing the na values with 0
## write.csv(mtcars.csv)
## install.packages("readxl") <- to install the packages,library(readxl) <- to load up the library
## df[(df$mpg > 20) & (df$hp > 100),]
## build -in functions in R : 
##seq(0,10,by=2) - it is used to sequence the data
## sort(x, decreasing=  true/false) - to arrange the values
## rev() - reverse the vector
## str() - structure of vector
# append() - merge objects together(on vector, list)
## checking data type: is.notation
##  convertering data type : as.notation
## print(sample(1:100,5)) - used to create any 5 random samples between 1:100
x <- 15
if (x == 12)
{
  print("The value of x is 12")
} else if (x == 14)
{
  print("The value of x is 14")
}else
{
  print("The value of x is not 12 or 14")
}
##/////////////////////////////////////////////////////////////////////////
temp <- 0
if(temp > 80)
{
  print("It's hot outside")
} else if((temp <= 80) & (temp >= 20))
{
  print("It is moderate ouside")
}else
{
  print("cold!!!!")
}

##\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
x <-1
if(x == 1)
{
  print("Hello")
}
##---------------------------------------------------------------------------
x <- 100
if(x / 2 == 0)
{
  print("the number is even")
}else
 { print("Not even") }
##----------------------------------------------------------------------------
x <- 50
if(is.matrix(x))
{
  print("Is a matrix")
}else
{
  print("not a matrix")
}
##--------------------------------------------------------------------------
x <- c(3,7,1)
if(x[1] > x[2])
{
  first <- x[1]
  second <- x[2]
} else
{
  first <- x[2]
  second <- x[1]
}
if(x[3] > first & x[3] > second)
{
  third <- second
  second <- first
  first <- x[3]
}else if (x[3] < first & x[3] < second)
{
  third <- x[3]
}else
{third <- x[2]
second <- first
}
print(paste(first,second,third))

##---------------------------------------------------------------------------
x <- c(20,30,70)
if(x[1] > x[2] & x[1] > x[3])
{
  print(x[1])
} else if(x[2] > x[3]) 
{
  print(x[2])
} else
  { print (x[3])
  }

##---------------------------------------------------------------------------
x <- c(4)
if(x < 0)
{
  print(-x)
}else
{
  print(x)
}
##--------------------------------------------------------------------------
x <- c(10)
if(x > 0)
{
  print(x^0.5)
}else
 { print("NA")
}
##--------------------------------------------------------------------------
x <- c(45,60, 70)
if(x[1] > x[2] & x[1] > x[3])
{ print(x[1]) 
}else if(x[2] > x[3])
  print(x[2])
}else 
{print(x[3])
}

##__________________________________________________________________________
x <- 1
while(x < 10)
{ print(paste0('x is :', x))
  x <- x + 1
if (x == 10)
{
  print("x is equal to 10")
  break
}else {
  print("x is not equal to 10")
}}
###-----------------------------------------------------------------------
v <- c(1,2,3,4,5,6,7)
for(temp in v)
{
  result <- temp + 1
  print(result)
}
##------------------------------------------------------------------------
my.list <- list(c(1,2,3),mtcars,12)
for(temp in my.list)
{
  result <- temp+1
  print(result)
}
##-----------------------------------------------------------------------
matr <- matrix(1:25,byrow = FALSE ,nrow = 5)
for(temp in matr)
{ print(temp)
}
##----------------------------------------------------------------------
new <- function(a,b)
{
  print(a+b)
}
new(2,3)
##----------------------------------------------------------------------
add_new <- function(num1, num2)
{
  my_sum <- num1+num2
  return(my_sum)
} result <- add_new(4,5)
print(result)

##-----------------------------------------------------------------------
new <- function(num)
{
  return(num*5)
} 
print(new(30))
##---------------------------------------------------------------------
new_function <- function(num)
{
  temp <- num * 50
  return(temp)
}
output <- new_function(100)
print(output)
#-----------------------------------------------------------------------
v <- "global enviornment"
s <- "global stuff"
fun <- function(s)
{
  print(v)
  s <- "resassigning the value"
  print(s)
}
fun(s)
print(s)
##-----------------------------------------------------------------------
x <- function(name)
{
  print(paste('Hello',name))
}
##-----------------------------------------------
new_x <- function(name)
{
   return(name)
}
print(paste("Hello",new_x))
##----------------------------------------------
prod <- fucntion(num1,num2)
{
  return(num1*num2)
}
print(prod)
##----------------------------------------------
new_fun <- function(inti,vec)
{
  for(element in vec)
  {
    if(element == inti)
    {
      return(TRUE)
    }
  }
  return(FALSE)
}
##-------------------------------------------------
new_value <- function(inti,vec)
{
    count <- 0
    for(element in vec)
    {
     if(element == inti)
     {
       count <- count + 1
     }
    }
    return(count)
}

bar_count <- function(pack)
{
  amount_with_ones <- pack %% 5
  print("The bar with one:",amount_with_ones)
  amount_with_five <- (pack - amount_with_ones)/5
  print("The bar with 5 kg",amount_with_five)
  return(amount_with_ones + amount_with_five)
}



summer <- function(a,b,c)
{ out <- c(0)
  if(a%%3!=0)
    {
    out <- append(a,out)
  }
if(b%%3!=0)
{
  out <- append(b,out)
}
if(c%%3!=0)
{
  out <- append(c,out)
}
return(sum(out))
}


prime_check <- function(a)
{
  if(a%%2 == 0)
  {
    return(TRUE)
  }else
  {
    return(FALSE)
  }
}


add_random <- function(x)
{
  add <- sample(1:100,2)
  return(x+add)
}

##lapply <- It is the list apply
v <- c(1,2,3,4,5)
add_random <- function(x)
{
  add <- sample(1:100,2)
  return(x+add)
}
result <- lapply(v,add_random)
print(result)

## sapply <- It is provide output in vector form
v <- c(1,2,3,4,5)
add_random <- function(x)
{
  add <- sample(1:100,1)
  return(x+add)
}
result <- sapply(v,add_random)
print(result)

v <- 1:15
multi <- function(x)
{
  return(x*2)
}
print(v)
result <- mapply(v,multi)
print(result)

## Ananmous function
v <- 1:5
result <- sapply(v,function(num){num*2})
print(result)

#### function to pass multiple parameters, round(45,67890, digits = 2), abs(),sum(),mean()
v <- 1:5
multi <- function(x,y)
{
  return(x+y)
}
print(v)
result <- sapply(v,multi,y=20)
print(result)

##grepl()<- used for pattern recognisation, grep() <- used for showing the index of pattern
## dplyr packages - install then add dplyr library to it
## way to write and filter code using dplyr functions
df %>% filter(mpg > 20) %>% sample_n(size=5) %>% arrange(desc(mpg))
head(filter(flights,month==11,carrier=='AA'))
comp <- c(1,1,1,2,2,2,3,3,3)
year <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9,min=0,max=100)
q2 <- runif(9,min=0,max=100)
q3 <- runif(9,min=0,max=100)
q4 <- runif(9,min=0,max=100)
df <- data.frame(comp=comp,year=year,qtr1=q1,qtr2=q2,qtr3=q3,qtr4=q4)
gather(df,Quater,Revenue,qtr1:qtr4) ##<- grabing last 4 columns 


stocks <- data.frame(
  time = as.Date('2020-01-03') + 0:9,
  X = rnorm(10,0,1),
  Y = rnorm(10,0,2),
  Z = rnorm(10,0,3)
)
stocks

p1 <- ggplot(movies,aes(x=rating)) + geom_histogram(binwidth = 1.0,color='red',fill='pink',alpa=0) 
##aplha shows the transparancey
xlab('Movie rating') + ylab('Count') ##to give x and y labels
## ggtitle() <- to add titile for the graph
## aes(fill=..count..) <- fill the colour as per the count
ggplot(mtcars, aes(x=wt,y=mpg)) + geom_point(size=5,alpha=0.5)
ggplot(mtcars, aes(x=wt,y=mpg)) + geom_point(aes(color=hp,size=4)) + scale_color_gradient(low='blue',high='red')
##bar graph
plotting <- ggplot(mpg,aes(x=class))+geom_bar(aes(fill=drv), position = "dodge")
##box plot
ggplot(mtcars,aes(x=factor(cyl),y=mpg)) + geom_boxplot(aes(fill=factor(cyl))) + theme_dark()
## geom_bin2d - using 2 dim
ggplot(movies,aes(x=year,y=rating)) + geom_hex() + scale_fill_gradient(low='black',high='red')
## geom_density 2d

##themes


##Project graph with additional properties
ggplot(df,aes(x=CPI,y=HDI)) + geom_point(aes(color=factor(Region)),shape=1,size=4,alpha=1)+theme_linedraw()
+ geom_smooth(aes(group=1),method='lm',formula=y~log(x),se=FALSE,color='red') + geom_text(aes(label=Country,color=factor(Region)))

pl3 <- pl + geom_text(aes(label=Country),color="grey20",data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE))
##pointsToTotal <- it is vector of country name
pl4 <- pl3 + theme_bw() + ggtitle("Corruption and human development") - Add the title



