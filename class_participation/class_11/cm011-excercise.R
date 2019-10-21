library("tidyverse")
library("gapminder")
library("here")

gapminder
write_csv(gapminder, './gapminder.csv')

view(gapminder)


# calculate mean life Exp per continent
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp = mean(lifeExp))


gapminder_sum %>%
  ggplot(aes(continent, ave_lifeExp)) +
  geom_point()
theme_bw()

gapminder_csv <- read_csv('./ gapminder_sum.csv')

# on windows: ./gapminder_sum.csv
view(gapminder_csv)

# testis a folder, and the rest are corresponding folders to the file.
# ('./test/tes/te/t/gapminder_sum.csv') 

# another way using here
# 
read_csv(here::here("test", "tes", "te", "t", "gapminder_sum.csv"))
ls()
list = ls()
remove(list=ls())
ls()

library("tidyverse")

write_csv(gapminder_sum, './gapminder_sum.csv')

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
  
  # read_csv can directly import urls, but read_excel requires you to first download it.
  
  download.file(url = data_url, destfile = paste('./dataset/', file_name))


# task: change above to use the  "here::here" package
download.file(url = data_url, destfile = here::here("test", "greatestGivers".xls"))

Recommendation: Use "basename"

file_name
("test",

library(readxl) #this will let you load in excel files.
# assign the imported 
philanthropists <- read_excel(here::here
("test", file_name), trim_ws = TRUE)

view(philanthroists)

head(philanthropists)

File to load in for class demo
Firas-MRI.xlsx





install.packages("here")
library("here")
library("here")
library(readxl)
library(here)

mri_file = here("datasets", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, ra)
view(mri)

mri <-read_excel(mri_file, range = "A1:L12")
view(mri)

mri <- mri[, -10]

mri <-  %>%
  pivot_longer(col = 'slice 1' :'slice 8',
               names_to = 'slice_no',
               values_to = 'value')









