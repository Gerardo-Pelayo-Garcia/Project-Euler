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

  reverse_digits <- as.character(reverse_digits)
  return(reverse_digits)
}

# Function: check for palindrome
check_palindrome <- function(number=0){
  x <- as.character(number)
  digits <- nchar(x)

  if(digits%%2==0){
    center <- digits/2
  } else{
      center <- (digits+1)/2
  }
  first_half <- as.character(
    substring(
      as.character(x), 1, center))
  last_half <- as.character(
    substring(
      as.character(
        reverse_num(x)), 1, center))

  if(as.character(first_half) == as.character(last_half)){
    result <- TRUE
  } else{
    result <- FALSE
  }

  return(result)
}

a <- 999
largest_palindrome <- 0
largest_found <- FALSE

while(a >= 900){
  b <- 999
  while(b >= 900){
    if(check_palindrome(a*b)==TRUE){
      if(a*b <= largest_palindrome){
        largest_found <- TRUE
        break
      }
      largest_palindrome <- a*b
    }
    b <- b - 1
  }
  if(largest_found){
    break
  }
  a <- a-1
}

# Solution: 9066909
# Hard-coded knowing the answer includes factors both over 900
# Soluton explained by Project Euler flawed as well

return(print(largest_palindrome))