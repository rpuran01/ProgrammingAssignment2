## Programming assignment 2
## 

## This function takes matrix as an input and creates an object matrix to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
                   set<- function(y){
                   	     x<<- y
                   }
                   get<- function() x
                   list(set=set, get=get)
}


## This function computes inverse of the special matrix returned by the function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$get()
        if(!is.null(m)){
        	   message("geting cached data")
        	   inverse<- solve(m)
        	   return(inverse)
        }
        
        
}
