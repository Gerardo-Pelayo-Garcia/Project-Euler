# Problem 7
# 10001st prime

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?



# Function: check if number is prime; returns string
# source: https://www.learn-r.org/r-tutorial/examples/check-prime-number.php
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
# nth term in prime number list 
n = 10001

i = 3
prime = 2
n_th = 1

# Takes too long; chunked progress
# current number being checked (i)
# current nth prime number found (n_th)
if(n > 2000){
  i <- 17000
  n_th <- 1960
}

if(n > 3000){
  i <- 27000
  n_th <- 2961
}

if(n > 4000){
  i <- 37000
  n_th <- 3923
}

if(n > 5000){
  i <- 48000
  n_th <- 4946
}

if(n > 6000){
  i <- 59000
  n_th <- 5963
}

if(n > 7000){
  i <- 70000
  n_th <- 6935
}

if(n > 8000){
  i <- 81000
  n_th <- 7925
}

if(n > 9000){
  i <- 93000
  n_th <- 8984
}

if(n > 10000){
  i <- 104000
  n_th <- 9933
}

while(n_th < n){
  if(check_prime(i)){
    prime <- i
    n_th <- n_th + 1
  }
  i <- i + 1
}

return(print(prime))
# print(n_th)

# Solution is: 104743