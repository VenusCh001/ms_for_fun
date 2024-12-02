f=function(x){
  return(x^2);
}
a=-3
b=3
curve(f,from=a,to=b,col="green",lwd=2)
randompoints=runif(n=1000,min=a,max=b)
result=(b-a)*(mean(f(randompoints)));
print(result)
experiment=vector(length=10000);
for(i in 1:10000){
  randomised=runif(n=i,max=3,min=-3);
  experiment[i]=(b-a)*(mean(f(randomised)));
}
plot(experiment,col="red",lwd=3)
abline(lwd=3,h=18,col="yellow")