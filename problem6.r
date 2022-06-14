# Problem 6
# Sum square difference

# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is

# 3025 - 385 = 3025

# .

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



df <- data.frame('naturals' = c(seq(1:100)))
df$squares <- df$naturals^2

sum_of_squares <- sum(df$squares)
square_of_sums <- sum(df$naturals)^2

difference <- square_of_sums - sum_of_squares

return(cat(difference))