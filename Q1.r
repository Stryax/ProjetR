bsplinebasis <- function(t,i,d){
  
  test <- matrix(nrow=length(i), ncol=length(t))

  for (n in 1:length(i))
     {
  test[n,] <- i[n]<=t & i[n+1]>t
 
   }
test <- test+0
 return(test)
}
