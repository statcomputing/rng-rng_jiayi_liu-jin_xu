# define rejection sampling
rejection_sampling <- function(sample.x, envelope, target){
  for(i in 1:length(sample.x)){
    U = runif(1,0,1)
    if(envelope(sample.x[i])*1*U <= target(sample.x[i])) {
      accept[i] = 'Yes'}
    else {
      accept[i] = 'No'
    }
  }
}
