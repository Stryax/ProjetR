d=3
mat3<-matrix(nrow=15,ncol=100)
for (z in k)
{
  mat3[z,] <- ((t-i[z])/(i[z+d]-i[z]))*mat2[z,] + ((i[z+d+1] - t) / (i[z+d+1] - i[z+1]))*mat2[z+1,]
} 

matplot(x,t(mat3), type = c("l"),pch=1,col = 1:15)

