## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  get <- function() x
  setmatrix <- function(matrix) n<<- matrix
  getmatrix <- function() n
  list(setmatrix = setmatrix, getmatrix = getmatrix, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  n <- x$getmatrix()
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  data <- x$get()
  n <- solve(data)
  x$setmatrix(n)
  n
}
