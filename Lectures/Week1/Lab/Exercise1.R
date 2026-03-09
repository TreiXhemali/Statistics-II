#####################################################
# AMAZON DATASET - UNIVARIATE EDA IN R
# Converted from Stata Do-file
#####################################################

# ------------------------
# 0. Simple Math in R
# ------------------------
# Show that R can do basic calculations
2 + 3        # addition
5 - 1        # subtraction
4 * 6        # multiplication
10 / 2       # division
2^3          # exponentiation
sqrt(16)     # square root
log(10)      # natural logarithm

# ------------------------
# 1. Import Data
# ------------------------
# Make sure the path matches your file location
amz_data <- read.csv("/Users/arjolaarapi-gjini/Desktop/amazon_subset_200k.csv")

# Quick look at the data
head(amz_data)
str(amz_data)       # structure of dataset
summary(amz_data)   # summary statistics

# ------------------------
# 2. Identify variable types
# ------------------------
# Numeric variables
numeric_vars <- sapply(amz_data, is.numeric)
numeric_vars

# Character (string) variables
string_vars <- sapply(amz_data, is.character)
string_vars

# ------------------------
# 3. PRICE VARIABLE ANALYSIS
# ------------------------
# Summary statistics
summary(amz_data$price)

# Detailed statistics
library(psych)  # for describe() function
describe(amz_data$price)

# Missing values
sum(is.na(amz_data$price))

# Non-positive prices
sum(amz_data$price <= 0, na.rm = TRUE)

# Histogram
hist(amz_data$price, breaks = 50, main = "Price Histogram", xlab = "Price", col = "lightblue")

# Log transformation
amz_data$log_price <- log(amz_data$price)
hist(amz_data$log_price, breaks = 50, main = "Log-Price Histogram", xlab = "Log(Price)", col = "lightgreen")

# Boxplot
boxplot(amz_data$price, main = "Boxplot of Price", ylab = "Price", col = "lightcoral")

# ------------------------
# 4. CATEGORY ANALYSIS
# ------------------------
# Frequency table
table(amz_data$category)

# Top categories (sorted)
category_counts <- sort(table(amz_data$category), decreasing = TRUE)
category_counts <-sort(table(amz_data§category), decreasing=TRUE)
head(category_counts, 10)

# ------------------------
# 5. STARS (RATINGS) ANALYSIS
# ------------------------
# Frequency table
table(amz_data$stars)

# Summary statistics
summary(amz_data$stars)
describe(amz_data$stars)

# Histogram
hist(amz_data$stars, breaks = 50, main = "Stars Histogram", xlab = "Stars", col = "lightyellow")

#####################################################
# END OF SCRIPT
#####################################################