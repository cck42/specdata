pollutantmean <- function(directory, pollutant,id = 1:332){
  filelist <- list.files(directory, full.names = TRUE)
  airpol <- data.frame()
  for(i in id){
    airpol <- rbind(airpol,read.csv(filelist[i]))
  }
  pol_sub <- airpol[[pollutant]]
  mean(pol_sub, na.rm = TRUE)
}