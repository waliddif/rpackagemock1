#' Private
#'
#' The function \code{f_setup} Private
#'
#' @details Loads installed packages, custom functions, and transaction cost tables into the global environment
#'
#' @return Setting up the global environment
#'
#' @examples
#' require(rpackagemock1)
#' f_setup()
#'
#' @export

f_setup <- function(){
  cv.packs <- c("zoo", "plm", "quantreg", "xlsx", "chron", "PerformanceAnalytics", "nlme",
                "tseries", "forecast", "knitr", "pander", "rstudioapi", "rmarkdown", "psych",
                "devtools", "shiny",
                "rpackagemock2")
  for (p in 1:length(cv.packs)) library(cv.packs[p], character.only=T)  # load installed packages
  print("Loaded the following packages:")
  print(cv.packs)
}


