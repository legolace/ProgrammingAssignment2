## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # init value
  cache <- NULL 
  
  # store a matrix
  set <- function(newValue) {
    x <<- newValue
    # clean memmory
    cache <<- NULL
  }
  # returns stored matrix
  get <- function() x
  # cache
  setInverse <- function(value) {
    cache <<- value
  }

  getInverse  <- function() cache
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # get the cached value
        inverse <- y$getInverse()
        # return cached value if it exists
        if(!is.null(inverse)) {
          message("getting cached data")
          return(inverse)
        }
        # else get the matrix, caclulate the inverse and store it
        data <- y$get()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # return the inverse
        inverse
}

