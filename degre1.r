bsplinebasis1<- function(t,i,d){
  d=1
  k=1:(length(i)-1)
  
  for (z in k)
  {
    mat1[z] <- ((t-i[z])/(i[z+d]-i[z]))*b0[1,] + ((i[z+d+1]-t) / (i[z+d+1] - i[z+1]))*b0[1,z+1]
  } 
}
mat1<-matrix(ncol=100,nrow=15)
d=1
k=1:(length(i)-2)

for (z in k)
{
  mat1[z,] <- ((t-i[z])/(i[z+d]-i[z]))*b0[z,] + ((i[z+d+1] - t) / (i[z+d+1] - i[z+1]))*b0[z+1,]
} 

#mat1 <- ((t-i[3])/(i[4]-i[3]))*b0[3,] + ((i[5] - t) / (i[5] - i[4]))*b0[4,]
x<-1:100
matplot(x,t(mat1), type = c("l"),pch=1,col = 1:15)