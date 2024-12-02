rkmethod2<-function(f,x0,y0,h,N){
  n=0;
  df=NULL;
  x=x0;
  y=y0;
  while(n<N){
    k1=h*f(x,y);
    k2=h*f(x+h,y+k1);
    k=(k1+k2)/2;
    df=rbind(df,data.frame(n=n,x=x,y=y,yn1=y+k))
    y=y+k;
    x=x+h;
    n=n+1;
  }
  print(df);
}
# Define the derivative function f(x, y) 
f=function(x,y){ 
  x+y 
} 
# Run RK 2nd order method 
rkmethod2(f,0,1,0.1,3) 