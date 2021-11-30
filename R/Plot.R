#' To Plot Data On A Ggplot
#' 
#' @param x = column
#' @param y = a different column
#' @param z = dataset
#' @return product A plot of the dataset
#' @usage 
#' plot(z, z$x, z$y)
#' plot(crabs, crabs$sex, crabs$color)
#' plot(butterfly.data, butterfly.data$Year, butterfly.data$Day)
#Input: DataFrame
#Output: ggplot of data
plot<- function(z, x, y){
  product<- ggplot(z, aes(x=x, y = y)) + geom_point()
  return (product)
}