corr<-function(directory,threshold = 0){
  b<- NULL
  for(i in 1:332){
    t<-numeric(400)
    if(i<10){
      a<-paste(paste('00',i,sep = ""),".csv",sep = "")
    }
    else if(i<100){
      a<-paste(paste('0',i,sep = ""),".csv",sep = "")
    }
    else{
      a<-paste(i,".csv",sep = "")
    }
    b<-c(b,complete.cases(read.csv(a)))
  }
  
  