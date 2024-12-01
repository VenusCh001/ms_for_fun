simpsons1_3rule<-function(a,b,n,f){
  h=(b-a)/n;
  s=f(a)+f(b);
  for(i in 1:(n-1)){
    value=a+(i*h)
    if(i%%2==0){
      s=s+2*(f(value));
    }
    else{
      s=s+4*(f(value));
    }
  }
  result=(h/3)*s
  return(result)
}
simpsons1_3rule(0,pi/2,10,f)

