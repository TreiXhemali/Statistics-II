# Exercise 1

# Given values
xbar <- 20
sigma <- 5
n <- 49

# Find z value for 95% confidence
z <- qnorm(0.975)

# Standard Error
SE <- sigma / sqrt(n)

# Margin of Error
ME <- z * SE

# Confidence Interval
lower <- xbar - ME
upper <- xbar + ME

# Results
z
lower
upper

Exercise II
# Given data
xbar <- 20
s <- 2
n <- 20

# Degrees of freedom
df <- n - 1

# t value for 95% CI
t <- qt(0.975, df)

# Standard error
SE <- s / sqrt(n)

# Margin of error
ME <- t * SE

# Confidence interval
lower <- xbar - ME
upper <- xbar + ME

# Results
t
ME
lower# Given
E <- 0.04
p <- 0.60
q <- 1 - p

# z value for 95% confidence
z <- qnorm(0.975)

# Sample size with estimate
n1 <- (z^2 * p * q) / (E^2)
ceiling(n1)

# Sample size with no estimate
p2 <- 0.5
q2 <- 1 - p2

n2 <- (z^2 * p2 * q2) / (E^2)
ceiling(n2)
upper

Exercise III
# Given
E <- 0.04
p <- 0.60
q <- 1 - p

# z value for 95% confidence
z <- qnorm(0.975)

# Sample size with estimate
n1 <- (z^2 * p * q) / (E^2)
ceiling(n1)

# Sample size with no estimate
p2 <- 0.5
q2 <- 1 - p2

n2 <- (z^2 * p2 * q2) / (E^2)
ceiling(n2)