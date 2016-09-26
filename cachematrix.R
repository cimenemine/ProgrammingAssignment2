## The main aim of these functions in this assignment is caching and retrieving the inverse of a matrix

## The function provides a list of functions responsible for setting and getting the matrix itself
## as well as the functions for caching the inverse of the matrix and retrieving the cached inverse of it

makeCacheMatrix <- function(x = matrix()) {
  inverseOfMatrix <- NULL
  
  setMatrix <- function(matrix = matrix())
  {
    x <<- matrix
  }
  
  getMatrix <- function() x
  
  setInverse <- function(inverseMatrix = matrix())
  { 
    inverseOfMatrix <<- inverseMatrix
  } 
  
  getInverse <- function() inverseOfMatrix
  
  list(getMatrix = getMatrix, setMatrix = setMatrix, getInverse = getInverse, setInverse = setInverse)
}


## The function first checks if matrix has cached inverse calculation. If yes returns it. 
## Otherwise calculates the inverse and caches it. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if(is.null(x$getInverse()))
  {
    x$setInverse(solve(x$getMatrix()))
  }
  else 
  {
    message("getting cached data")
  }
  
  x$getInverse()
}
