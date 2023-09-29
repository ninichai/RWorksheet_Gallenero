#1 create vector using operator

#a Sequence from -5 to 5
seq1<-seq(-5,5)
seq1

# the output is -5 -4 -3 -2 -1  0  1  2  3  4  5
# the ouput was a sequence consists of numbers -5 to 5

#b
x <- 1:7
x_value <- seq (1:7) 
x_value

# the output is 1 2 3 4 5 6 7
# the output was a sequence of x from 1 to 7

#2 

seq(1, 3, by=0.2)

# the output is 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
# the output is a sequence of numbers from 1 to 3 
# that increases by 0.2 within each number

#3 factory workers age

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 
         43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 
         41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)

#a access the third element

age3 <- age[3]
age3

# the value is 22

#b access second and fourth element
age4and5 <- age [c(2,4)]
age4and5

# the value is 28 and 36

#c all elements but fourth and twelveth
allAges <- age [c(-4,-12)]
allAges


#4
x <- c("first"=3, "second"=0, "third"=9)
x[c("first", "third")]

#  vector 'x' with the values (3, 0, 9) and names ("first," "second," "third"), 
#  then prints the vector and accesses its elements with the names 
# "first" and "third," getting values 3 and 9

#5

newSeq <- seq(-3:2)
newSeq

newSeq[2] <- 0
newSeq

# the output is a new vector where the second element is replaced by 0
# the output is -3  0 -1  0  1  2

#6 
# 6.a
fuel_purchase <- data.frame(
  month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  price_per_liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  purchase_quantity = c(25, 30, 40, 50, 10, 45)
)

# 6.b
fuel <- data.frame(
  month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  price_per_liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  purchase_quantity = c(25, 30, 40, 50, 10, 45)
)

fuel

# 6.b
avgFuelExpenditure <- weighted.mean(fuel$price_per_liter, fuel$purchase_quantity)
avgFuelExpenditure




#7
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))



#8

# 8.a
ranking <- c(1,2,3,4,5,6,7,8,9,10,
             11,12,13,14,15,16,17,18,19,20,
             21,22,23,24,25)

celeb_names <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey",
                 "U2", "Tiger Woods", "Steven Spielberg",
                 "Howard Stern", "50 Cent", "Cast of the Sopranos",
                 "Dan Brown", "Bruce Springsteen", "Donald Trump",
                 "Muhammad Ali", "Paul McCartney", "George Lucas",
                 "Elton John", "David Letterman", "Phil Mickelson",
                 "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                 "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

payments <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55,
              44, 55, 40, 244, 34, 40, 47, 75, 25, 39, 35, 32, 40, 31)

celebrity_data <- data.frame(
  power_ranking = ranking,
  celebrity_name = celeb_names,
  pay = payments
)

View(celebrity_data)

# 8.b
celebrity_data$power_ranking[celebrity_data$celebrity_name == "J.K Rowling"] <- 15
celebrity_data$pay[celebrity_data$celebrity_name == "J.K Rowling"] <- 90
celebrity_data

View(celebrity_data)

# 8.c

write.csv(celebrity_data, "PowerRanking.csv")
PowerRanking <- read.csv("PowerRanking.csv")
View(PowerRanking)

# 8.d

new_rows <- celebrity_data[10:20,]
save(new_rows, file="Ranks.RData")
View(new_rows)

# 8.e

# selects rows 10 to 20 from the original data frame, 
# saves the selected rows as Ranks.RData, and then prints the selected rows as 
# the output

#9. 

#a.
library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)

dim_hotelsvienna <- dim(hotels_vienna)
dim_hotelsvienna

colnames(hotels_vienna)
hot<-hotels_vienna[c("country","neighbourhood","price","stars",
                      "accommodation_type","rating")]
hot
View(hot)

#d. 

save(hot, file = "new.RData")
View(hot)

#e. 

load("new.RData")
head(hot[[1]])
tail(hot[[1]])





#10
#a. 
vegiesList <- list("carrot", "malunggay", "onion", "cabbage", "lettuce",
                   "broccoli", "radish", "chili", "squash", "garlic")

vegiesList

#b.
vegiesList<- append(vegiesList,c("eggplant", "peas"))
vegiesList

#c
vegiesList <- append(vegiesList,c("celery", "bell pepper", "Cauliflower",
                                  "beans"), after=5)
vegiesList


#d
vegiesList <- vegiesList[c(-5, -10, -15)]

# there were the 13 vegetables left 
