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

# Problem 7 ------------------------------------------------------ 7

# Prints string if number is composite/prime
isprime <- function(n) {
    lim <- n/2
    prime <- TRUE
    for( i in 2:lim) {
      if(n %% i == 0)
        prime <- FALSE
      }
  if(n==2) prime <- TRUE
  if(prime) print(paste(n," is a Prime Number"))
  else print(paste(n," is a Composite Number"))
}

# Function: check if number is prime; return boolean
check_prime <- function(n){
  lim <- n/2
  prime <- TRUE
  for( i in 2:lim) {
    if(n %% i == 0){
      prime <- FALSE
    }
  }
  return(prime)
}

# ------------------------------------------------------------------
