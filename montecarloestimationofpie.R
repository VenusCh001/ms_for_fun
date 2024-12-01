numdots=100000;
circledots=0;
for(i in 1:numdots){
  x=runif(n=1,min=-1,max=1);
  y=runif(n=1,min=-1,max=1);
  if(x^2+y^2<=1){
    circledots=circledots+1;
  }
}
print(4*(circledots/numdots))
