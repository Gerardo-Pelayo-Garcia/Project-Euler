# Problem 3
# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?



# If factor+=1, last case where x%%y==0 is greatest prime factor
# The resulting division will generate a value of 1

x <- 600851475143
factor <- 2

while(x>1){
  if(x%%factor==0){
    x <- x/factor
  }
  else{
    factor <- factor + 1
  }
}

#print(factor)
return(cat(factor))
