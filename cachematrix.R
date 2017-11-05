## This function will cache the inverse of a matrix

## Create a object that will cach it's inverse

makeCacheMatrix <- function(x = matrix()) {
          
  
  ## Start the inverse property
  i <- NULL
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL

  }
  ##Get the matrix
  get <- function() {
    m
  }
  ##Set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ##Get the inverse of the matrix
  getInverse <- function() {
    i
  }
  
  ##List the inverse
  
  list(set = set, get = get, setInverse =SetInverse, getInverse = getInverse)
}


## This code will compute the inverse of the matirx.
## If the invere has already been calculatet the funtion
##should get the inverse form the cache.
cacheSolve <- function(x, ...){
##Return a matrix that is the invers
        m <- x$getInverse()
        
## Check if the matix is already in the cach

        if(!is.null(m) ) {
          message("Loading cached data")
          return(m)
        }
## Get the matrix
        
  data <- x$get()
  
  ##Calculate the inverse
  
  m <- solve(data) %% data
  
  ##Set the invers
  
  x$setInverse(m)
  
  ##Returning the matrix
  
  m
}

