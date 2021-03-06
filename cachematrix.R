## First it creates an object with Value NULL (User changes it) the it sets the value of x (the matrix); Next step is to get the matrix
## Then you set the inverse of the function, and then get that inverse. Finally you determine the list that will contain the prevoiusly mentioned
## values. Second function answers or gets the value that you defined in the first function, this is
## You get the inverse, only if it has not been made in the first function.

## So this function only makes the Cache matrix, that is saiving in the diferent enviroment the users matrix, not specally difficult when answer is
## practically by the profesor...
makeCacheMatrix <- function(x = matrix()) {
                    b <- NULL
                    set <- function(y){
                          x <<- y
                          b <<- NULL
                    }
                    get <- function()x
                    setinv <- function(solve)b <<- solve
                    getinv <- function()b
                    list(set = set, get = get,
                            setinv = setinv,
                            getinv = getinv)
}


## Just like the function above this one was pretty easy, it was just changing the vector object
## for a matrix, still a problem ocurred to me at first, the function "solve" could solve the input
## matrix, this is becouse the matrix was made by me and had some values related so it could get the inverse
## so the Matrix has to be squared and other caracteristics to that it can be inverted.
cacheSolve <- function(x = matrix(),...) {
              b <- x$getinv()
              if (!is.null(b)){
                    message("getting cached data")
                    return(b)
              }
              data <- x$get()
              b <- solve(data, ...)
              x$setinv(b)
              b
        ## Return a matrix that is the inverse of 'x'
}
