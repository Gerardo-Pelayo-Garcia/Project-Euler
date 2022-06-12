# Functions created to solve specific problems.
# Load this file using source() to access.

# ------------------------------------------------------------------

# Problem 4 ------------------------------------------------------ 4

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
  
  first_half <- substring(x, 1, center)
  last_half <- substring(reverse_num(x), 1, center)

  result = FALSE
  if(first_half == last_half){
    result <- TRUE
  }
  return(result)
}

# ------------------------------------------------------------------