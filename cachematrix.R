## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#the makeCacheMatrix function creates a special "matrix", which is really a list containing a function to:
#1. set the value of the matrix
#2. get the value
#3. set the value of the inverse
#4. get the inverse value

makeCacheMatrix <- function(x = matrix()) {
  i <- MULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
get <- function()x
setinverese <- function(inverse) i <<- inverse
getinverse <- function() i
list(set=set,
     get=get,
     setinverese=setinverese,
     getinverse=getinverse)
}


## Write a short comment describing this function
#This function computes the inverse of the matrix returned by makeCacheMatrix. If the inverse has already been calculated, then cacheSolve should retrive the inverse from the cache

cacheSolve <- function(x, ...) {
       i <- x$getinverse()
       if(!is.null(i)){
         message("getting cached data")
         return(i)
       }
       date <- x$get()
       i <- solve(data,...)
       x$setinverse(i)
       i
}
