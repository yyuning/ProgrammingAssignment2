## makeCacheMatrix: This function creates a special "matrix" object that can cache its 
## reverse objects
makeCacheMatrix <- function(x = matrix()) {
        inverse<-NULL
        set<-function(y){
                x<<-y
                inverse<<-NULL
}
## "<<-"This  is used to assign values to variables in the current environment
        get<-function（）x
        setinverse<-function(inverse)inverse<<-inverse
        getinverse<-function()inverse
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
        }

cacheSolve <- function(x, ...) {
        inverse<-x$getinverse
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
}
        data<-x$get()
        inverse<-solve(data, ...)
        x$setinverse(inverse)
        inverse
        }
