pollutantmean <- function(directory, pollutant,id = 1:332){
  file.path(getwd(),directory)
  
    x<-read.csv(paste(as.character(id),".csv",sep = ""),header = TRUE)
  
  if(pollutant == "sulfate"){
    mean(x[,2] na.rm=TRUE)
    
  }else if(pollutant == "nitrate"){
    mean(x[,3], na.rm=TRUE)
  }
  
  
}

