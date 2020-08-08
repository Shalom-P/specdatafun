complete<-function(directory,id){
  t<-numeric(length(id))
  t<-NULL
  for(i in  id){
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
    t<-c(t,length(b$ID[complete.cases(b)]))
  }
  data.frame("id"=id,"nobs"=t)
  
}