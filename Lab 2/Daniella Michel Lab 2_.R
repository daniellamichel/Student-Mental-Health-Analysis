# In this porject, we will use a dataset:  mhealth.csv
# Data was collected by a survey conducted with 59 university students to examine their characteristics and mental health
    # Gender:  student's gender
    # Age: student's age
    # Major: student's major
    # CGPA = Cumulative GPA
    # Marital_status: Yes = married, No = single
    # Depression: Yes = experienced depression in the last 2 weeks, No = did not experience depression in the last 2 weeks
    # Anxiety: Yes = experienced anxiety in the last 2 weeks, No = did not experience anxiety in the last 2 weeks
    # Panic_attack: Yes = experienced panic attack in the last 2 weeks, No = did not experience panic attack in the last 2 weeks
    # Treatment: Yes = seeked treatment in the last 2 weeks, No = did not seek treatment in the last 2 weeks

################################################

# Import the csv file called mhealth,csv to R 
mhealth <- read.csv("mhealth.csv", stringsAsFactors = FALSE)


# QUESTION 1: View data type of the variables. Which variables are numerical? Which variables are categorical?
str(mhealth)







# QUESTION 2: Create an appropriate visual to show the relationship between students' age and CGPA.
# Choose your second favorite color. Make sure to label x-axis, y-axis and main title of the chart appropriately.
# Make sure Age is on the x axis (horizontal axis). 
# Fit a linear trend line.
# What is the name of this chart type?
# How do you interpret this visual? 

plot(mhealth$Age, mhealth$CGPA, col = "pink", pch = 18, main = "Scatter plot of Age and CGPA", ylab = "CGPA", xlab = "Age")

abline(lm(CGPA ~ Age, data = mhealth), col = "orange")

a. The name of the chart is Scatter plot of Age and CGPA
b. The CGPA is consistently high between all ages (18-24)









# QUESTION 3:
# What is the chart type called? How do you interpret the chart? 
# What is/are the preattentive attributes used in this chart?

hist(mhealth$CGPA, breaks = 20, col = "yellow", main = "Histogram of CGPA", xlab = "CGPA", ylab = "Frequency")
   
a. The chart type is a bar plot and the plot shows me that the tallest bar is between 3.5 and 4.0.
This means that students have a CGPA of between 3.5 or around there on average. 
b. The preattentive attributes are color, position and length.








# QUESTION 4: Change all categorical variables in mydata to "factor"
# Create TWO charts with two categorical variables: Gender and Depression 
# One using a GROUPED bar chart and one using a STACKED bar chart 
# Use colors of your choice
# Make sure to label x-axis, y-axis and main title of the chart appropriately.
# How do you interpret the visual?
# What are the preattentive attributes used in this chart?

columns <- c("Gender", "Major", "Marital_status", "Depression", "Anxiety", "Panic_attack", "Treatment")
mhealth[, columns] <- lapply(mhealth[, columns], factor)

# Create a contingency table
counts3 <- table(mhealth$Gender, mhealth$Depression)

# Grouped bar chart
barplot(counts3, 
        main="Gender and Depression Level of Students", 
        xlab="Gender", 
        ylab="Count", 
        col=c("cyan", "pink"), 
        legend = c("Yes", "No"),
        beside = TRUE,
        names.arg = c("Female", "Male"))

# Stacked bar chart
barplot(counts3, 
        main="Gender and Depression Level of Students", 
        xlab="Gender", 
        ylab="Count", 
        col=c("orange", "pink"), 
        legend = c("Yes", "No"),
        names.arg = c("Female", "Male"))


# Interpretation:
The Gender and Depression Level of Students bar plot shows me that more
more women are depressed than men, but not by much. 



# QUESTION 5: Create a chart with two categorical variables: 
# Panic attack (yes/no) and Treatment (yes/no) 
# using either grouped OR stacked bar chart 
# Use different colors of your choice
# How do you interpret the visual?


counts4 <- table(mhealth$Panic_attack, mhealth$Treatment)

barplot(counts4_aggregated[, -1], 
        main="Panic Attack among Students",
        xlab="Panic Attack Status", 
        col=c("orange", "purple"), 
        names.arg = counts4_aggregated$Panic_attack,
        legend = c("Treatment: Yes", "Treatment: No"), 
        beside = TRUE)

#Interpretation
This plot tells me that more student dont receive treatment for their
panic attack disorders than do. 
