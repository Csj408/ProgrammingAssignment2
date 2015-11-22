## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Create cache Matrix which isa list containing a function to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the vlude of the inverse
makeCacheMatrix <- function(x = matrix()) {

      set <- function(y) { 
          x <<- y 
         inv <<- NULL 
      } 
      get <- function() x 
      setinverse <- function(inverse) inv <<- inverse 
      getinverse <- function() inv 
      list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}


## Write a short comment describing this function
## Calculate the inverse of the maxtrix
## if the inverse has been calculated, it will get the inverse directly and skip the calulation
## otherwise calculate the inversie and set the inverse the caches
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv <- x$getinverse() 
      if(!is.null(inv)) { 
          message("getting cached data.") 
          return(inv) 
      } 
      data <- x$get() 
      inv <- solve(data) 
      x$setinverse(inv) 
      return (inv) 
}
