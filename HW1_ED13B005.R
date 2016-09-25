k<-1
Y1<-(-log(runif(1000)))
Y2<-(-log(runif(1000)))

U<-runif(1000)
Z<-c()

for (i in 1:1000){
  if (Y2[i] >= (Y1[i]-1)^2/2){
    if (U[i] < 0.5){
      Z = append(Z,Y1[i]);
      
    }
    else{
      Z =append(Z,-Y1[i]);
    }
  }
}

hist(Z)

L<-length(Z)
X<-c()
for (j in 1:L-1){
  X[j]<-c(Z[j+1])
}
X[L]<-0
plot(Z,X)
mean(Z)
var(Z)
