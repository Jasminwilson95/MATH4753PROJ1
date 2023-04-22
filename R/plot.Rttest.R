
#' Plots a boxplot side by side of x and y
#'
#' @param obj - This is the object of class Rttest
#' @param ...
#'
#' @return returns a box plot
#' @export plot.Rttest
#'
#' @examples
#' \dontrun{plot(obj)}
plot.Rttest <- function(obj,...){
  x <- obj[["data"]][["x"]]
  y <- obj[["data"]][["y"]]
  df <- data.frame(x,y)
  library(ggplot2)
  library(reshape2)
  data_long = melt(df)

  ggplot(data_long, aes(x=variable,y=value)) + geom_boxplot() +
    labs(x="Population", y= "Samples")

}

