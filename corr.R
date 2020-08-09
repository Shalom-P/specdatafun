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
    j<-complete.cases(b)
    s<-b$nitrate[j]
    f<-b$sulfate[j]
    if(len>threshold){
      g<-c(g,cor(f,s))
    }
  }
  g
}
  
  