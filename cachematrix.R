## Put comments here that give an overall description of what your
## functions do

# make CacheMatrix should return something like a matrix (a new object of some sort). When this object is passed to cacheSolve, cachesolve should return the inverse of the matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	#thematrix<<-x
	theInverse<-NULL # this should assigne in the current environment, not the parent. Pointed out by Malte during grading
	get<-function()
	{
		#return(thematrix)
        x
	}
	
	set<-function(y=matrix())
	{
		#thematrix<<-y
        x<<-y
        theInverse<<-NULL
        # set theInverse to Null, 
        # cacheSolve will recompute inverse if matrix changes
	}
	
	getInverse<-function()
	{
		return(theInverse)
	}
	
	setInverse<-function(y=matrix)
	{
		theInverse<<-y
	}
	return(c(get=get,set=set,getInverse=getInverse,setInverse=setInverse))

}


## Write a short comment describing this function
# takes an object output from makeCacheMatrix as input.
# if obj$getInverse() is null, then the inverse is computed and stored.
# if obj$getInverse() is not null, it's value is returned
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
        inverse<-x$getInverse()
        # if inverse is null, it hasn't been computed
        if (is.null(inverse))
        {
            inverse<-solve(x$get(),...)
            #print('computing inverse')
            x$setInverse(inverse)
        }
        inverse

}
