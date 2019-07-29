makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

makeCache <- function(m = matrix()) {
  cm <- NULL
  cinv <- NULL
# getting matrix  
  set <- function()
    cm <<- m
  get <- function()
    cm
  
# caching the inverse of the matrix  
  setinv <- function(cinv)
    cinv <<- solve(cm)
  
  getinv <- functin()
  cinv
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

cachesolve <- function(x,...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    print("getting cached data") 
    return(inv)

  }
  else{
    a$set()
    m <- x$get()
    inv <- solve(m)
    x$getinv(inv)
    x$getinv()
  }
}
