f<-function(x){
  return(x*sin(x));
}

simpsons3_8rule<-function(a,b,n){
  h=(b-a)/n;
  sum=f(a)+f(b);
  for(i in 1:(n-1)){
    value=a+i*h;
    finalvalue=f(value);
    if(i%%3==0){
      sum=sum+2*(finalvalue);
    }
    else{
      sum=sum+3*(finalvalue);
    }
  }
  sum=(3*h/8)*sum
  return(sum);
}
simpsons3_8rule(1,2,10)
