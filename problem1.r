# Problem 1
# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.



num <- data.frame('numbers'=c(3, 5, 6, 9))

for(i in 10:999){
  if(i%%3==0 || i%%5==0){
    num[nrow(num)+1, ] <- i
  }
}

# sum(num$numbers)
# Solution: 233168

return(cat(sum(num$numbers)))