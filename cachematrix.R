
## Put comments here that give an overall description of what your
## functions do

## Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    get <- function() x
    m <<- solve(x)
   getinverse <- function() m 
  list(get = get, getinverse = getinverse)
}


## cacheSolve first searches cache for the inverse, and then report or calculate the inverse
## depending on availability of the inverve in the cache.

cacheSolve <- function(x, ...) {
       ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  m
  }
