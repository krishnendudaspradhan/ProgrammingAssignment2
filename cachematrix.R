## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {	# This Function creates a special "Matrix" object that can hold a matrix and it's inverse
	inv_mat <- NULL				# "inv_mat" variable holds the inverse of the matrix
						# "x" is the matrix variable

	setMatrix <- function(mat){		# This function sets the value of the matrix variable i.e. "x" and also assign "inv_mat" variable to NULL
		x <<- mat
		inv_mat <<- NULL
	}

	getMatrix <- function(){		# This function return the Matrix
		x
	}

	setInverse <- function(inverse){	# This function sets the value of the "inv_mat" variable
		inv_mat <<- inverse
	}

	getInverse <- function(){		# This function returns the inverse value of the matrix
		inv_mat
	}
	
	list(SetMatrix = setMatrix, GetMatrix = getMatrix, SetInverse = setInverse, GetInverse = getInverse)	# Return a list containing 4 functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {			# This function returns the inverse of the Matrix

        inv <- x$GetInverse()				# Getting cached inverse using "GetInverse" function

	if(! is.null(inv)){				# Checking wheather inverse already calculated or not 
		print("Getting the Inverse Matrix")	
		return(inv)				# If inverse is already present then return the inverse
	}

	mat <- x$GetMatrix()				# Getting the matrix
	inv <- solve(data,...)				# Calculating the inverse
	x$SetInverse(inv)				# Setting the inverse
	inv						# Returns the inverse
}
