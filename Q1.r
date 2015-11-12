bsplinebasis <- function(t,i,d){
  x<- 1:100
  test <- matrix(nrow=length(i), ncol=length(t))

  for (n in 1:length(i))
     {
  test[n,] <- i[n]<=t & i[n+1]>t
 
   }
test <- test+0

plot0<-matplot(x,t(test), type = c("l"),pch=1,col = 1:15) #plot
return(list(test,plot0))
}
