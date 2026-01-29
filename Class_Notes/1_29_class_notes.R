# Practice for the day
library(tidyverse)
install.packages("palmerpenguins")
large_bill = penguins[penguins$bill_len > 40,]
mean(large_bill$body_mass, na.rm = T)

#This is using tidyverse. This filters out all "na" values
big_bill = penguins %>% 
  filter(bill_len > 50) 

mean(big_bill$body_mass, na.rm = T)

#Now let's find the body mass of males vs females
penguins %>% 
  filter(sex == "male") %>%
  filter(bill_len > 40) %>%
  pluck("body_mass") %>% 
  mean() #Mean doesn't recognize columns 
#             so we use the pluck function to pull that out of the body mass 

penguins %>% 
  filter(sex == "female") %>%
  filter(bill_len > 40) %>%
  pluck("body_mass") %>% 
  mean()

penguins
# Now doing the same thing but with group_by and summarize to make a nice table
penguins %>% 
  filter(bill_len > 40) %>% 
  group_by(sex, island) %>% 
  summarize(avg_body_mass = mean(body_mass),
            num_of_birds = n(),
            min_flipper_len = min(flipper_len)) %>% 
  arrange(desc(min_flipper_len))


# Finding the heaviest penguins (body mass > 5000)
penguins %>% 
  filter(body_mass > 5000) %>% 
  group_by(sex) %>% 
  summarize(count = n(),
            max_body_weight = max(body_mass))

#Adding a column that shows if they are overweight
penguins$over_weight = penguins$body_mass > 5000 # It already knows to use T/F
#Or we can use tidyverse with a function called mutate()

penguins %>% 
  mutate(len_times_dpt = bill_len * bill_dep) %>% 
  view()

##combining with mutate and case_with()

penguins %>% 
  mutate(fat_status = case_when(body_mass > 5000 ~ "Overweight",
                                body_mass < 5000 ~ "Normal")) %>% 
  view()

#Now let's practice with creating a column with birds with big bills
penguins_2 = penguins %>% 
  mutate(huge_bills = case_when(bill_len > 45 ~ "Cool",
                                bill_len < 45 ~ "Normal")) 
#We can also use TRUE or FALSE as the alternative condition.  


