# Problem 4
# Largest palindrome product 

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# -----------------------
#   if(digits%%2==0){
#    center <- digits/2
#    rev_center <- digits/2 + 1
#  } else{
#    digits <- (digits+1)/2
#  }
# -----------------------

# Base r makes string functions more tedious

# Function: reverse order of digits in a number
reverse_num <- function(number=''){
  x <- as.character(number)
  digits <- nchar(x)
  reverse_digits <- ''
  
  while(digits>0){
    reverse_digits <- 
      paste(reverse_digits, substring(x, digits, digits), sep='')
    digits <- digits - 1
  }

  reverse_digits <- as.numeric(reverse_digits)
  return(reverse_digits)
}

# Function: check for palindrome
check_palindrome <- function(number=0){
  x <- number
  digits <- nchar(x)

  if(digits%%2==0){
    center <- digits/2
  } else{
      center <- (digits+1)/2
  }
  first_half <- as.numeric(
    substring(
      as.character(x), 1, center))
  last_half <- as.numeric(
    substring(
      as.character(
        reverse_num(x)), 1, center))

  if(first_half == last_half){
    result <- TRUE
  } else{
    result <- FALSE
  }

  return(result)
}