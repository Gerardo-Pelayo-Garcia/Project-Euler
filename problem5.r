# Problem 5
# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

x <- rev(seq(1, 20))

y <- 10
evenly_divisible = FALSE
greatest_factor = 20
lowest_factor = 11
start <- lowest_factor

while(evenly_divisible==FALSE){
  while(start <= greatest_factor){
    if(y%%start==0){
      if(start==greatest_factor){
        evenly_divisible <- TRUE
      }
      start <- start + 1
    } else{
      y <- y + 10
      start <- lowest_factor
      }
  }
}

print(paste("The solution is: ", y))
factors <- seq(1:greatest_factor)
for(i in 1:length(factors)){
  print(paste(y, " is divisible by ", factors[i], ": ", y%%factors[i]==0))
}

return(print(y))