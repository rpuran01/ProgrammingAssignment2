## Programming assignment 2
## 

## This function takes matrix as an input and creates an object matrix to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- null
  setmatrix<- function(y){
    x<<- y
    inv<<- null
  }
  getmatrix<- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(setmatrix=setmatrix, getmatrix=getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes inverse of the special matrix returned by the function above

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<- x$getinverse()
  if(!is.null(inv)){
    message("geting cached data")
    return(inverse)
  }
  matrix <- x$getmatrix()
  inv<- solve(matrix)
  x$setmatrix(inv)
  inv
  
}
