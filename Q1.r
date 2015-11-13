setwd("C:/Users/Axel/Dropbox/Etudes/PSY22MA BIS/Calcul Statistique sur ordinateur/PARTIE B/ProjetR")
t<- seq(0,0.99,0.01)
noeuds<- seq(-0.2,1.2,0.1)
bsplinebasis <- function(t,i,d){
  x<- 1:100
  test <- matrix(nrow=(length(i)-1), ncol=length(t))

  for (n in 1:(length(i)-1))
     {
  test[n,] <- i[n]<=t & i[n+1]>t
 
   }
test <- test+0

plot0<-matplot(x,t(test), type = c("l"),pch=1,col = 1:15) #plot
plot0
test
#return(list(test,plot0))
}
b0<-bsplinebasis(t,noeuds)
# bsplinebasis1<- function(b0,i,d){
#   
#   for (z in 1:length(i))
#     {
#   mat1 <- ((t-i[z])/(i[z+d]-i[z]))*b0 + ((i[z+d+1]-t) / (i[z+d+1] - i[z+1]))*b0[u+1]
#     } 
# }


#vecteur0<-sapply(t,degre0)  
  #return(vecteur0)


