## Put comments here that give an overall description of what your
## functions do
	#makeCacheMatrix function sets value of the matrix, gets the value, sets the value of the inverse matrix and gets the value of the inverse matrix

## Write a short comment describing this function
	#set and get matrix
	
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	setmatrix <- function(y) {
	x <<- y
	inv <<- NULL
	}
	
	getmatrix <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)
  }


## Write a short comment describing this function
	#cacheSolve returns the inverse of the matrix by checking if the inverse has been calculate, if yes --> show result, if no --> calculate the inverse

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data.")
		return(inv)
		}
		data <- x$getmatrix()
		inv <- solve(data)
		x$setinverse(inv)
		inv
		}