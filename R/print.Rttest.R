#' Prints the x, y using the kable package
#'
#' @param obj -object
#'
#' @return a table with the data and the alpha value, confidentervaks and p-value
#' @export print.Rttest
#'
#' @examples
#' \dontrun{
#' print(obj)}
print.Rttest <- function(obj,...){
  library(kableExtra)
  x <- obj[["data"]][["x"]]
  y <- obj[["data"]][["y"]]
  df <- data.frame(x,y)
  df %>%
    kable() %>%
    kable_styling()
}
