#' function that will output a vector of the first n terms in the child’s game Fizz Buzz
#'
#'
#' @param n A real number above 0
#' @return vector containing real numbner, Fizz, Buzz, FizzBuzz
#' @examples
#' FizzBuzz(10)
#' @export
FizzBuzz <- function(n){
  if (is.infinite(n)) {
    stop("Error: Input cannot be infinite")
  }
  if (n == 0) {
    stop("Error: Input cannot be 0")
  }
  if (n < 0) {
    stop("Error: Input cannot be negative")
  }
  if (!is.numeric(n)) {
    stop("Error: Input must be numeric")
  }
  output <- NULL
  n.1 <- c(1:n)
  for( i in 1:length(n.1) ){
    if (n.1[i] %% 3 == 0 & n.1[i] %% 5 == 0) {
      output[i] <-  "FizzBuzz"
    }else{
      if (n.1[i] %% 3 == 0) {
        output[i] <- "Fizz"
      }else{
        if (n.1[i] %% 5 == 0) {
          output[i] <- "Buzz"
        }
        else{output[i] <- n.1[i]  }
      }
    }
  }
  return(output)
}
