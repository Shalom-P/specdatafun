corr<-function(directory,threshold = 0){
  g<-NULL
  for(i in 1:332){
    if(i<10){
      a<-paste(paste('00',i,sep = ""),".csv",sep = "")
    }
    else if(i<100){
      a<-paste(paste('0',i,sep = ""),".csv",sep = "")
    }
    else{
      a<-paste(i,".csv",sep = "")
    }
    b<-read.csv(a)
    len<-length(b$ID[complete.cases(b)])
    if(len>threshold){
      s<-b$nitrate[complete.cases(b)]
      f<-b$sulfate[complete.cases(b)]
      g<-c(corr(f,s))
    }
  }
  g
}
  
  