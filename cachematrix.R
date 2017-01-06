## Put comments here that give an overall description of what your
## functions do

# make CacheMatrix should return something like a matrix (a new object of some sort). When this object is passed to cacheSolve, cachesolve should return the inverse of the matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	thematrix<<-x
	theInverse<<-NULL
	get<-function()
	{
		return(thematrix)
	}
	
	set<-function(y=matrix())
	{
		thematrix<<-y
	}
	
	getInverse<-function()
	{
		return(theInverse)
	}
	
	setInverse<-function(y=matrix)
	{
		theInverse<<-y
	}
	return c(get,set,getInverse,setInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		if
}
