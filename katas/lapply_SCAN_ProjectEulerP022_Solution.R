

problem22 <- function() {
  namelist <- scan(file="c:/p022_names.txt", sep=",", what="", na.strings="")
  
  sum(unlist(
    lapply(namelist, 
           function(Z) which(namelist==Z) * sum(match(unlist(strsplit(Z,"")), LETTERS)))))
}