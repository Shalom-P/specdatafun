pollutantmean<- function(directory,pollutant,id ){
  alln=numeric()
  for(i in id){
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
    b<-read.csv(a)
    if(identical(pollutant,"sulfate")){
      C<-b$sulfate[complete.cases(b$sulfate)]
      #print(c)
    }
    else if(identical(pollutant,"nitrate")){
      C<-b$nitrate[complete.cases(b$nitrate)]
      #print(c)
    }
    alln<-c(alln,C)
  }
  mean(alln)
}
<<<<<<< HEAD

=======
>>>>>>> 9d2ed1271ba2edfefe716c7d7fbd93c3617fc55f

    
