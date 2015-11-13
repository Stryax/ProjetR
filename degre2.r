d=2
mat2<-matrix(nrow=15,ncol=100)
k=1:(length(i)-3)
for (z in k)
{
  mat2[z,] <- ((t-i[z])/(i[z+d]-i[z]))*mat1[z,] + ((i[z+d+1] - t) / (i[z+d+1] - i[z+1]))*mat1[z+1,]
} 
x<-1:100
matplot(x,t(mat2), type = c("l"),pch=1,col = 1:15)

