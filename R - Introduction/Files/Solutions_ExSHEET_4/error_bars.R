#Function to plot error bars on top of a graphic
 
error.bars = function(x, y, upper, lower=upper, length=0.1,...){

#input arguments: 
#x: x values, is usually the plot handle
#y: values around which the intervals are built
#upper: length of upper interval
#lower: length of lower interval
#length: plotting parameter

  if(length(x) != length(y) | length(y) !=length(lower) | length(lower) != length(upper)){
    stop("vectors must be same length")
  }
  arrows(x,y+upper, x, y-lower, angle=90, code=3, length=length, ...)
}