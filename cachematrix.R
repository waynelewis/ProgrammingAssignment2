## These functions calculate the inverse of a given matrix. The inverse is
## cached, and if a cached version is present, it will be returned. If there is no
## cached version, the inverse will be calculated and cached.

## This function provides a set of sub-functions to store and return a matrix,
## as well as caculate and return the matrix inverse.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    set_inverse <- function(solve) inverse <<- solve
    get_inverse <- function() inverse
    list(set = set, get = get,
            set_inverse = set_inverse,
            get_inverse = get_inverse)

}


## If the inverse has not been cached, calculate it and store it. If is has
## been cached, then return the cached value.

cacheSolve <- function(x, ...) {
    inverse <- x$get_inverse()
        if(!is.null(inverse)) {
            message("getting cached data")
                return(inverse)
        }
    data <- x$get()
        inverse <- solve(data, ...)
        x$set_inverse(inv)
        inverse

## Return a matrix that is the inverse of 'x'
}
