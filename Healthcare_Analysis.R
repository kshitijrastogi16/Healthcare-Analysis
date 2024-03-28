Healthcare_Dataset <- read.csv("C:/Users/Kshitij/OneDrive/Desktop/Projects/R Programming/Healthcare Analysis/Healthcare_Dataset.csv")
View(Healthcare_Dataset)

#Q1 variables
num_var = ncol(Healthcare_Dataset)
print(num_var)

#Q2 columns
num_var1 = ncol(Healthcare_Dataset)
print(num_var1)

#Q3 variance of height
variance = var(Healthcare_Dataset$Height..Cms.)
print(variance)

#Q4 standard deviation of height
stdev = sqrt(variance)
print(stdev)

#Q5 range of height
rangeh = range(Healthcare_Dataset$Height..Cms.)
print(rangeh)

#Q6 barchat of age groups
Healthcare_Dataset$Age_Group <- cut(Healthcare_Dataset$Age, breaks = c(18, 30, 40, 50, 60, 70, 100),
                                    labels = c("18-30", "31-40", "41-50", "51-60", "61-70", "71-100"),
                                    include.lowest = TRUE)

age_group_counts <- table(Healthcare_Dataset$Age_Group)

barplot(age_group_counts, main = "Number of Patients in Age Groups",
        xlab = "Age Group", ylab = "Number of Patients",
        col = "blue", border = "black")



#Q7 barchat of gender vs blood type
gender_counts <- table(Healthcare_Dataset$Gender, Healthcare_Dataset$Blood.Type)

barplot(gender_counts, beside = TRUE,
        main = "Number of Male and Female Patients for Various Blood Types",
        xlab = "Blood Type", ylab = "Number of Patients",
        col = c("skyblue", "lightpink"),
        legend.text = c("Male", "Female"))