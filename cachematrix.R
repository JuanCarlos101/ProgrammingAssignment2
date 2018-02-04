## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The following function creates a matrix object to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
 #The package "matlib" should be installed and loaded 
  #Define a variable for the inverse matrix
  im<-matrix(0)
  #Set the matrix
  set <- function(y = matrix()) {
    x <<- y
    im <<- matrix(0)
  }
    get <- function() x
    setinverse <- function(inv) im <<- inv
    getinverse<- function() im
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
##Returns the inverse of the previous matrix

cacheSolve <- function(x, ...) {
        im <- x$getinverse()
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  data <- x$get()
  im <- inv(data, ...)
  x$setinverse(im)
  im
}
