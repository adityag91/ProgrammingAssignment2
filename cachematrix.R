## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         inverseVar <- NULL
         set <- function(y) {
                 x <<- y
                 inverseVar <<- NULL
         }
         get <- function() x
         setInverse <- function(inverse) inv <<- inverse
         getInverse <- function() inverseVar
         list(set = set,
              get = get,
              setInverse = setInverse,
              getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverseVar <- x$getInverse()
         if (!is.null(inverseVar)) {
                 message("getting cached data")
                 return(inverseVar)
         }
         mat <- x$get()
         inverseVar <- solve(mat, ...)
         x$setInverse(inverseVar)
         inverseVar

}
