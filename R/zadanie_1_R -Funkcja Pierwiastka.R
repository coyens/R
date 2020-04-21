
pierwiastek <- function(x, est = 1, prec = 0.001)
  repeat {
    y = x/est
    est = (y + est)/2
    if (abs(est - y) <= prec | abs(est - y) <= 0) {
      return(est);
      break
      
    }
    
  }
pierwiastek(16)
pierwiastek(pierwiastek(16))   # wynik powinien być 2
pierwiastek(1e-20, 1, 1e-14)   # wynik powinien być 1e-10