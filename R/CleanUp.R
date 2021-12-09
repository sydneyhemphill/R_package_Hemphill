#' Removes NAs as the file is read in
#' 
#' @param x = column
#' @param y = a different column
#' @param z = dataset
#' @return product The dataset returned has no NA values
#' @usage 
#' no.na(x)
#' no.na("/cloud/project/data/Butterfly_data.csv")
#' no.na("/cloud/project/data/Phenology_data.csv")
#' @export
#' Input: dataframes
#' Output: dataframes with no NAs
no.na<- function(file = "/cloud/project/data/Butterfly_data.csv"){
      butterfly<- read_csv(file)
      butterfly <- na.omit(butterfly)
      return(butterfly)
   }