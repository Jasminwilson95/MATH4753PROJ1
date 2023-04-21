#' Test Statistics, Mean and pvalue
#'
#' @param x data 1
#' @param y data 2
#' @param alpha confidence level
#'
#' @return an object
#' @export
#'
#' @examples
#' \dont {obj <- mypackage::myconstr(x=x,y=y,alpha = 0.05)}
myconstr= function(x,y,alpha){
  length(x) <- length(y)
  df = data.frame(x,y)
  t = t.test(x, y, alternative="two.sided", mu=0, paired=FALSE, var.equal=TRUE, conf.level = 1-alpha)
  obj=list(data =list(x=x, y=y),t=t)
  class(obj) <-"Rttest"
  obj
}
