## I first created a function for special "matrix" object
## and set the null value as "a"
## then I used the makeVector function as template and replaced "mean" 
## with "solve"


## The function will set the value of the matrix, get the value of the matrix
## set the value of the solve and get the value of the solve

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        a<- NULL
        set <-function(y) {
                x<<-y
                a<<- NULL
        }
        get<-function() x
        setsolve<- function(solve) a<<-solve
        getsolve<- function() a
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Similar to the function above, I adapted the Cachemean function by 
## changing the "mean" to "solve" and use the a as null. 

cacheSolve <- function(x, ...) {
        a<- x$getsolve()
        if(!is.null(a)){
                message("getting inverted data")
                return(a)
        }
        data<- x$get()
        a<- solve(data, ...)
        x$setsolve(a)
        a
        
}
  
