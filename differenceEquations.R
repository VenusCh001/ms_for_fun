#Solving non homogeneous difference equation
#Venus Chaudhary 22201012022
solve_difference_equation=function(p,q,n,initial_values,f){
  x0=initial_values[1];
  x1=initial_values[2];
  
  x=numeric(n);
  x[1]=x0;
  x[2]=x1;
  
  for(i in 3:n){
    x[i]=p*x[i-1]-q*x[i-2]+f(n);
  }
  return(x)
}

f=function(n){
  return(n)
}

p=1;
q=-2;
initial_values=c(1,1);
n=10;

solution=solve_difference_equation(p,q,n,initial_values,f)

cat("the solution is : ",solution,"\n");

plot(0:(n-1),solution,xlab="n",ylab="xn",col="blue",
     main="Solution of non homogeneous difference equation",type="o",pch=19)

