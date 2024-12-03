# prey predator model
# Venus Chaudhary 22201012022
prey_predator_equation<-function(alpha,beta,gamma,delta,x0,y0,t){
  x=x0;
  y=y0;
  for(i in 1:t){
    x[i+1]=(1+alpha)*x[i]-beta*y[i];
    y[i+1]=(1-gamma)*y[i]+delta*x[i];
  }
  return(list(D=x,T=y));
}
result=prey_predator_equation(0.1,0.05,0.5,0.4,200,400,30)
print(result)
plot(0:30, result$D, col="blue", xlab="time", type="l", ylab="population", main="Predator-Prey Model")
lines(0:30, result$T, col="red")
legend("topright", legend=c("Prey", "Predator"), col=c("blue", "red"), lty=1)
cat("final prey population : ",result$D[31],"\n")
cat("final predator population : ",result$T[31],"\n")