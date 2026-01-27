#step 4. Finding all files that end in csv within the data folder
csv_files = list.files("Data", pattern = "\\.csv$", recursive = T, ignore.case = T, full.names = T)
csv_files
#Step 5
length(csv_files)

#Step 6
df = read.csv("Data/wingspan_vs_mass.csv") #this is adding the wingspan vs 
          #mass file to an object

#step 7
head(df, n = 5) #these are the first 5 lines of the df dataframe

#step 8
b_files = list.files("Data", pattern = "^b", recursive = T, full.names = T) 
#this shows all files under the data folder that start with a "b" and storing 
#the full paths
b_files

#step 9. This loop looks at each file in "b_files" and then writes the first 
#line using readLines.
for (info in b_files) {
  cat("File name:", info, "\n")
  cat(readLines(info, n =1), "\n\n")
}

#step 10. Doing the same thing for all the files that end in csv
for (info in csv_files) {
  cat("File name:", info, "\n")
  cat(readLines(info, n = 1), "\n\n") 
}
#the above is another loop that lists each file path and the first line