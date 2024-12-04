#epidemic model
#Venus Chaudhary 22201012022

install.packages("deSolve")
library(deSolve);

N=1000
beta=0.001;
gamma=0.1;
I0=0.01*N;
S0=N-I0;
R0=0

states=c(S=S0,I=I0,R=R0);
parameter=c(beta=beta,gamma=gamma)

sir_model=function(t,states,parameter){
  with(as.list(c(states,parameter)),{
    ds=-beta*S*I;
    di=beta*S*I-gamma*I;
    dr=gamma*I;
    return(list(c(ds,di,dr)))
  })
}
time=seq(0,40,by=0.1)

output=ode(y=states,times=time,func=sir_model,parms=parameter)

output_df=as.data.frame(output);

plot(xlab="time",ylab="population",col="black",x=output_df$time,y=output_df$S,
    type="l",lwd=2,ylim=c(0,N),main="Epidemic progression (SIR Model)")
lines(x=output_df$time,y=output_df$I,col="red",lwd=2)
lines(x=output_df$time,y=output_df$R,col="green",lwd=2)
legend("right",legend=c("Susceptible","Infected","Recovered"),
      col=c("black","red","green"),lwd=2)





















