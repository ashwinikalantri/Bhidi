#age
calc_age <- function(birthDate, refDate = Sys.Date()) {
  require(lubridate)
  period <- as.period(interval(birthDate, refDate),
                      unit = "year")
  period$year
} 


##Age 
dat$newage <- ifelse(dat$birth_know == 1,calc_age(dat$dob),dat$age_d)


a <- colnames(ind)
b <- colnames(dat)
c <- setdiff(b,a)
c <- c[!c %in% "responsible"]
c <- c[!c %in% "newage"]
ind <- dat[,!(names(dat) %in% c)]
rm(a,b,c)