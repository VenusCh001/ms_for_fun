#variables making
x<-55
y<-44

#make vector
firstvector=c("a","b","c","d")
secondvector=c("alpha","beta","gamma","theta")

#creating matrix
mymatrix=matrix(nrow=3,ncol=3,byrow=TRUE,data=c(1,2,3,4,5,6,7,8,9))

#creating dataframe
my_df=data.frame(alphabet=firstvector,namesOfPeeps=secondvector)
my_df$score=c(100,200,300,400)
my_df[1,]

