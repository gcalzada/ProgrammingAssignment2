## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 
  m_inv <- NULL
  set <- function(y) {
    x<<-y
    m_inv<<-NULL
  }
  get <- function() x
  setInv <- function(solve) m_inv <<- solve
  getInv<-function()m_inv
  list(set=set,get=get,
       setInv=setInv,
       getInv=getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m_inv<-x$getInv()
  if(!is.null(m_inv)){
    message("getting cached data")
    return(m_inv)
  }
  datos<-x$get()
  m_inv<-solve(datos,...)
  x$setInv(m_inv)
  m_inv
}
