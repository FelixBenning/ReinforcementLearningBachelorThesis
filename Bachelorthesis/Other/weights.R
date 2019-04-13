
datafunc<-function(n, alpha){
  y<-rep(1,n)
  for(i in 2:n){
    y[i]<-alpha[i]
    y[1:(i-1)]<-(1-alpha[i])*y[1:(i-1)]
  }
  return(y)
}

n<-500
t<-1:n


alpha<-rep(0.15,n)
y<-datafunc(n, alpha)
plot(t,log(y), type="l")
write.table(y, "D:/Google Drive/Mannheim Uni/Mathematik/Stochastik,Maß-Theorie/Bachelorarbeit/Bachelorthesis/Other/expon.csv")


alpha<-1/sqrt(t)
y<-datafunc(n, alpha)
lines(t,log(y), type="l")
write.table(y, "D:/Google Drive/Mannheim Uni/Mathematik/Stochastik,Maß-Theorie/Bachelorarbeit/Bachelorthesis/Other/sqrtn.csv")

alpha<-1/t
y<-datafunc(n, alpha)
lines(t,log(y))
write.table(y, "D:/Google Drive/Mannheim Uni/Mathematik/Stochastik,Maß-Theorie/Bachelorarbeit/Bachelorthesis/Other/n.csv")

