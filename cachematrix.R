## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##First initialization of property of inverse matrix
  inverse <- NULL
  ##assign a new variable with function
  set <- function(matr) {
    ##value of matrix
    x <<- matr
    m <<- NULL
  }
  ##assign a new variable
  get <- function() {
    x
  }
  ##set the inverse of the matrix
  setinverse <- function(i){
    inverse <- i
  }
  ##get the inverse
  getinverse <- function() {
    inverse
  }
##list of the methods are returned
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  ##Return inverse if it was already initinialized
  if(!is.null(inverse)) {
    message("getting cached inverse")
    return(inverse)
  }
  ## Get the matrix
  data <- x$get()
  inverse <- solve(data, ...)
  ##Set the inverse
  x$setinverse(inverse)
  ## Return the matrix
  inverse
}
