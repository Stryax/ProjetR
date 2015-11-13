donnees<-read.table("Projet R 2015.txt",header=T,sep="*",dec=",",skip=9,encoding="ISO-8859-15")
donnees$Groupe <- as.factor(donnees$Groupe)
donneesclean<-donnees[complete.cases(donnees),]
g <- list(donneesclean[donneesclean$Groupe==1,],donneesclean[donneesclean$Groupe==2,],donneesclean[donneesclean$Groupe==3,])
statdescv <- function(y) 
{
  #Pour appliquer plusieurs fonctions grace a apply, on crÃ©e une fct qui en contient plusieurs
  #on la passe ensuite a apply
  matfunc <- function(x) c(N=length(x),Moyenne=mean(x),"Ecart-type"=sd(x),Mini=min(x),Maxi=max(x),Mediane=median(x))
  matdesc<-apply(y,2,matfunc)
  
  return(matdesc)
  
}
statdescv(cbind(donneesclean$Variable_explicative,donneesclean$Réponse,g[[1]],g[[2]],g[[3]]))

bx<-bsplinebasis(g[[1]][,1],noeuds,3)
b<- solve(t(x)%*%x)%*%t(x)%*%y
