t<- seq(0,0.99,0.01)
noeuds<- seq(-0.2,1.2,0.1)
bsplinebasis <- function(t,i,d=3){
  matrices <-list()
  x<- 1:100
  matrices[[1]] <- matrix(nrow=(length(i)-1), ncol=length(t))
  
  for (n in 1:(length(i)-1))
  {
    matrices[[1]][n,] <- i[n]<=t & i[n+1]>t
    
  }
  matrices[[1]] <- matrices[[1]] +0
  #matrices de degré 1 jusque d + 1
  for(m in 2:(d+1)){
    mat<-matrix(ncol=length(t),nrow=(15-m))
    mutrice<- matrices[[m-1]]
    k=1:(length(i)-m)
    dg <- m-1
    for (z in k)
    {
      mat[z,] <- ((t-i[z])/(i[z+dg]-i[z]))*mutrice[z,] + ((i[z+dg+1] - t) / (i[z+dg+1] - i[z+1]))*mutrice[z+1,]
    } 
    matrices[[m]]<-mat
  }
  par(mfrow=c(2,2))
for(pt in 1:length(matrices)) matplot(x,t(matrices[[pt]]), type = c("l"),pch=1,col = 1:15)
  return(matrices)
}
b0<-bsplinebasis(t,noeuds,3)
