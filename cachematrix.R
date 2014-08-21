makeCacheMatrix <- function( a = matrix() ) {
				## Initialize the inverse property
x <- NULL
				## Method to set the matrix
set <- function( matrix ) {
a <<- matrix
x <<- NULL
}
					## Method the get the matrix
get <- function() {
					## Return the matrix
a
}
					
setInverse <- function(inverse) {
x <<- inverse
}
						
getInverse <- function() {
						
x
}
						
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}
					
cacheSolve <- function(x, ...) {
						
a <- x$getInverse()
							
if( !is.null(a) ) {
message("getting cached data")
return(a)
}
							
data <- x$get()
								
a <- solve(data) %*% data
									
x$setInverse(a)
								## Return the matrix
a
}
