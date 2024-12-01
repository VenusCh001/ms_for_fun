numdots=100;
x=runif(n=numdots,min=-1,max=1)
y=runif(n=numdots,min=-1,max=1)
for(i in 1:50){
  plot(x[1:i],y[1:i],xlim=c(-1,1),ylim=c(-1,1))
  Sys.sleep(0.5)
}
