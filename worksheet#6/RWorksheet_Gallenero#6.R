#1. Create a data frame for the table below. Show your solution.

Student_Score <- data.frame(Student = c(1,2,3,4,5,6,7,8,9,10),
                            Pre_Test = c(55,54,47,57,51,61,57,54,63,58),
                            Post_Test = c(61,60,56,63,56,63,59,56,62,61))

Student_Score


#a. Compute the descriptive statistics using different packages (Hmisc and pastecs). Write the codes and its result.


library(Hmisc)
library(pastecs)

Hmisc_Stats <- describe(Student_Score[,c("Pre_Test","Post_Test")])
Hmisc_Stats

# Calculate descriptive statistics using pastecs
Pastecs_Stats <- stat.desc(Student_Score)
Pastecs_Stats


#2. The Department of Agriculture was studying the effects of several levels of a fertilizer on the growth of a plant. For some analyses, it might be useful to convert the fertilizer levels to an ordered factor.
#The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.
#a. Write the codes and describe the result.

library(dplyr)

fertilizer_lvl <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)

Ordered_Factor <- factor(fertilizer_lvl, levels = unique(fertilizer_lvl))

Basic_Stats <- summary(Ordered_Factor)
Basic_Stats


#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”,“n”, “i”, “l” ; n=none, l=light, i=intense
#a. What is the best way to represent this in R?
  
excercise_levels <- c("n", "l", "n", "n", "l", "l", "n", "n", "i", "l")

exercise_factor <- factor(excercise_levels, levels = c("n","l","i"))

basic_stats <- summary(exercise_factor)
basic_stats


#4. Sample of 30 tax accountants from all the states and territories of Australia and their
#individual state of origin is specified by a character vector of state mnemonics as:
  state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
             "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
             "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
             "vic", "vic", "act")
#a. Apply the factor function and factor level. Describe the results

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

state_factor <- factor(state)
state_factor

summary_state <- summary(state_factor)
summary_state


#5. From #4 - continuation:
• Suppose we have the incomes of the same tax accountants in another vector (in suitably large units of money)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
#a. Calculate the sample mean income for each state we can now use the special function tapply():


Incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

mean_income <- tapply(Incomes, state_factor, mean)
mean_income


#b. Copy the results and interpret.

act      nsw       nt      qld       sa      tas      vic       wa 
44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 

#The average income for each state is included in this output. Additionally, each name corresponds to a state factor, factor level. 


#6. Calculate the standard errors of the state income means (refer again to number 3)
a. What is the standard error? Write the codes.


std_error <- function(x) sqrt(var(x)/length(x))
incster <- tapply(Incomes, state, std_error)
standard_error <- tapply(Incomes, state_factor, std_error)
standard_error

#b.Interpret the result

#The vector incster contains the standard errors for the estimated mean income for each state. The standard error reflects the variability of the sample mean. Greater standard errors indicate greater variability.


#7. Use the titanic dataset
#a. subset the titatic dataset of those who survived and not survived. Show the codes and its result.

library(titanic)

data("titanic_train")
titanic_data <- titanic_train

str(titanic_data)

Subset_Survived <- subset(titanic_data, Survived == 1)


Subset_Dead <- subset(titanic_data, Survived == 0)
Subset_Dead

head(Subset_Survived)
head(Subset_Dead)


#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases.
#a. describe what is the dataset all about.
#This dataset is about breast cancer Wisconsin.
#The dataset shows clump_thickness, size_uniformity,	shape_uniformity,	marginal_adhesion,	epithelial_size,	bare_nucleoli,	bland_chromatin,	normal_nucleoli,	mitoses	class of breast.


library(readr)
library(rcompanion)
Breastcancer_Wisconsin <- read_csv("breastcancer_wisconsin.csv",col_types = cols(
  id = col_double(),
  clump_thickness = col_double(),
  size_uniformity = col_double(),
  shape_uniformity = col_double(),
  marginal_adhesion = col_double(),
  epithelial_size = col_double(),
  bare_nucleoli = col_character(),
  bland_chromatin = col_double(),
  normal_nucleoli = col_double(),
  mitoses = col_double(),
  class = col_double()
))
Breastcancer_Wisconsin


#d.1 Standard error of the mean for clump thickness.

clump_thickness <- sd(Breastcancer_Wisconsin$clump_thickness) / sqrt(length(Breastcancer_Wisconsin$clump_thickness))
cat("d.1 Standard Error of the Mean for Clump Thickness:", clump_thickness, "\n")


#d.2 Coefficient of variability for Marginal Adhesion.

marginal_adhesion <- sd(Breastcancer_Wisconsin$marginal_adhesion) / mean(Breastcancer_Wisconsin$marginal_adhesion) * 100
cat("d.2 Coefficient of Variability for Marginal Adhesion:", marginal_adhesion, "%\n")


#d.3 Number of null values of Bare Nuclei.

values_bare_nuclei <- sum(is.na(Breastcancer_Wisconsin$bare_nucleoli))
cat("d.3 Number of Null Values in Bare Nuclei:", values_bare_nuclei, "\n")


#d.4 Mean and standard deviation for Bland Chromatin

mean_bland_chromatin <- mean(Breastcancer_Wisconsin$bland_chromatin)
mean_bland_chromatin
sd_bland_chromatin <- sd(Breastcancer_Wisconsin$bland_chromatin)
cat("d.4 Mean for Bland Chromatin:", mean_bland_chromatin, "\n")
cat("   Standard Deviation for Bland Chromatin:", sd_bland_chromatin, "\n")


#d.5 Confidence interval of the mean for Uniformity of Cell Shape

uniformity_of_cell_shape <- t.test(Breastcancer_Wisconsin$shape_uniformity, conf.level = 0.95)$conf.int
cat("d.5 Confidence Interval for the Mean of Uniformity of Cell Shape:", uniformity_of_cell_shape, "\n")


#d. How many attributes?

attributes <- ncol(Breastcancer_Wisconsin)
attributes

#There are 11 attributes.

#e. Find the percentage of respondents who are malignant. Interpret the results.

#assuming 4 is malignant
percentage_malignant <- (sum(Breastcancer_Wisconsin$class == 4) / nrow(Breastcancer_Wisconsin)) * 100
paste0("Percentage of Respondents who are Malignant: ", percentage_malignant,"%")


#9. Export the data abalone to the Microsoft excel file. Copy the codes.
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
view(abalone)
head(abalone)
summary(abalone)

#install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")

data("abalone")
#View(abalone)
head(abalone)
summary(abalone)

#export

library(xlsx)

#write.xlsx(abalone, "abalone.xlsx")

