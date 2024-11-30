#function
f<-function(x){
  return(sin(x))
}
trapezoidalRule<-function(a,b,f,n){
  h=(b-a)/n
  vec=1:(n-1)
  proper=a+vec*h
  final=f(proper)
  ans=(h/2)*(f(a)+f(b)+2*sum(final))
  return(ans)
}
trapezoidalRule(0,pi/4,f,14)

