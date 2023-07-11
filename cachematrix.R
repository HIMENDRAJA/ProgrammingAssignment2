## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x=matrix()) {
  # Initialize the matrix and inverse cache
  matrix <- NULL
  inverse <- NULL
  
  # Function to set the matrix
  set <- function(inputMatrix) {
    matrix <<- inputMatrix  # Use <<- to assign to the parent environment
    inverse <<- NULL  # Reset the inverse cache when the matrix changes
  }
  
  # Function to get the matrix
  get <- function() {
    matrix
  }
  
  # Function to set the inverse
  setInverse <- function(inv) {
    inverse <<- inv  # Use <<- to assign to the parent environment
  }
  
  # Function to get the inverse
  getInverse <- function() {
    inverse
  }
  
  # Return the list of functions
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(cacheMatrix) {
  # Check if the inverse is already cached
  inverse <- cacheMatrix$getInverse()
  
  if (!is.null(inverse)) {
    message("Retrieving cached inverse...")
    return(inverse)
  }
  
  # If not, compute the inverse
  matrix <- cacheMatrix$get()
  
  inverse <- solve(matrix)
  
  # Cache the inverse
  cacheMatrix$setInverse(inverse)
  
  inverse
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
