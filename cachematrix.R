makeCacheMatrix <- function( a = matrix() ) {
				
x <- NULL
				
set <- function( matrix ) {
a <<- matrix
x <<- NULL
}
					
get <- function() {
					
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
								
a
}
