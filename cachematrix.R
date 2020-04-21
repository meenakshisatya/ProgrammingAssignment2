## makeCacheMatrix creates a special “matrix”, which is really a list containing a function to:

#set the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
#get the value of the matrix

}
#set the value of the inverse

#get the value of the inverse

#Input to cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function(){ x }
  setinverse <- function(inverse){i <<- inverse}
  getinverse <- function() { i }  
#return list of elements
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse) 
  }


##  computes the inverse of the special matrix returned by makeCacheMatrix above

cacheSolve <- function(x, ...)  {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  return(i)
}