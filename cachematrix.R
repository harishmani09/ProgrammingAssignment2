## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        set <- function(y){
            x <<- y 
            mat <<- NULL
        }
        get <- function()x 
        
        #set the inverse of matrix 
        setinverse <- function(inverse){mat <<- inverse}
        #get the inverse of matrix 
        getinverse <- function(){mat}
        
        #create a list of all objects 
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat <- x$getinverse()
        if(!is.null(mat)){
            message("getting cached data")
            return(mat)
        }
        
        #getting data to create inverse 
        data <- x$get()
        mat <- solve(data,...)
        x$setinverse(mat)
        mat 
        
}
