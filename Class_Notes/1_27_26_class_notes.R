# 1. Get the car with cyl equal to 4 (save in new obj)
# 2. Save both mpg > 20 and cyl equal to 4 into a new object
cars = mtcars
four_cyl = cars[cars$cyl==4, ]
four_cyl_good_mpg = four_cyl[four_cyl$mpg>20, ] 
#Could have done good_car = four_cyl[four_cyl$cyl==4 & four_cyl$mpg>20]  


# 3. What are the data type of each of the columns?
# convert all to character

str(four_cyl)
dim(four_cyl)
four_cyl$mpg = as.character(four_cyl$mpg)

#but it is faster with a loop
for (col in names(four_cyl)) {
  four_cyl[, col] = as.character(four_cyl[, col])
}

#Or we can use apply
apply(four_cyl_good_mpg, 2, as.character) #2 signifies columns, 1 would be rows.

library(qrcode)
url = "https://github.com/"
qr = qr_code(url)
plot(qr)
