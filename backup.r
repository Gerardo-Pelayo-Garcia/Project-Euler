# Problem 5????



max_factor = 20

list_factors <- rev(seq(2:max_factor))

factors <- data.frame('factors'=c())

for(i in 2:length(list_factors)){
  a <- max_factor
  b <- a/2 + 1

 while(k>=2){
   if(k==2){
     break
   }

   if(list_factors[i]%%k==0){
     k <- k - 1
   }
 }
}

