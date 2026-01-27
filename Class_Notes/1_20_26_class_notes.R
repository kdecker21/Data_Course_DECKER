#Warm up for the day
wingspan = read.csv("Data/wingspan_vs_mass.csv") #relative path
#Absolute path
read.csv('/Users/kurtdecker/Downloads/School/Data Analytics/Intro for Biologists
         /Data_Course_DECKER/Data/wingspan_vs_mass.csv')

ncol(wingspan)
nrow(wingspan)

getwd() #this will give the current working directory

read.csv("") #If you put the curser in the quotes and hit 
              #tab it will let you select files with clicks

# level 1 ####
#always end with 4 pound signs but those that preceed will determine the order in outline
## level 2 ####



################
#Types of objects in R
###############

# 1. Vector: One dimension, only allows one type of data
#If any object is a character the whole vector becomes a vector.
c()

# 2. Matrix: Two dimensions, only allows one type of data
matrix() 

# 3. Data Frame: two dimensional, allows different types of data, all rows and columns are equal
#This is the one that let's you use the $ sign to access or add new columns
data.frame()

# 4. Array: Multiple dimensions, only allows same type of data, must be same length
array()

# 5. List: Multiple dimensions, different type allowed, different length allowed
list()

# 6. Function: Just stores a function
example_function = function(x,y){
  x+y
}
example_function(2,3)

#####################
#####################

#For loop
for (i in fruit) {
  print(i)
  i = apple
  i = peach
  i = strawberry
}

##################
###################

#Practice making a data frame
df_fruit = data.frame(fruit = c("apple", "red grape", "Cantelope"),
                      calories = c(10, 1, 30)
                      )
df_fruit
df_fruit$calories_100 = df_fruit$calories + 100
df_fruit

for (i in length(df_fruit)){
  print(df_fruit$calories_100)
}



