## This my R Programming Wee3 project 2 file.
## User: Charlesfeitshans
## below are a pair of functions that are used to creats 
## a special object that stores the matrix and its inverse

## this function creats a matrix and stors it inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
}
  get <- function() x 
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  getinverse <- function() inv
  list(get=get,set=set,setinverse=setinverse,getinverse=getinverse)
}

## this fuction computes the inverse on the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.NULL(inv)){
    message("getting catched data")
    return(inv)
}
  mat <- x$get()
  inv <- solve (mat,...)
  x$setinverse(inv)
  inv
}