#' To Provide a Summary of the Linear Model
#' 
#' @param x = column
#' @param y = another column
#' @param z = dataset
#' @return a linear model of the two columns in the dataset
#' @usage
#' linear.model(butterfly.data$SpringTemp, butterfly.data$Year, butterfly.data)
#' linear.model(crabs$sex, crabs$color, crabs)
#' @export
#' Input: dataframe
#' Output: a linear model 
linear.model <- function(x,y,z){
  model.fit<- lm(x ~ y, data = z)
  return(summary(model.fit))
}