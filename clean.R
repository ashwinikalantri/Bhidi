rm(list = ls())

##Import needed libraries
library(tidyverse); library(hms); library(dplyr);library(expss); library(labeling); library(labelled);
library(lubridate); library(reshape2); library(readr)

##Set directory
setwd("/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/Bhidi")

#Import Data
source(here::here("bhidi_import.R"))

#Read Data
source(here::here("read_data.R"))

#Clean Data for Uniform variables
source(here::here("var_clean.R"))

##Combining data sets
hh <- hhver12
ind <- indver12
int <- intver12

#time
int$int_time <- colsplit(int$interview__duration,":",names=c("day_hours","min","sec"))
int$day_t <- colsplit(int$int_time$day_hours,"\\.",names=c("day","hours"))
int$day_t$hours<-ifelse(is.na(int$day_t$hours) == TRUE,0,int$day_t$hours)
int$inttime <- hms::hms(seconds = int$int_time$sec,minutes = int$int_time$min,hours = int$day_t$hours, days = int$day_t$day)
int$int_time <- NULL
int$day_t <- NULL
int$interview__duration <- NULL

##Join hh & int
hh <- left_join(hh,int, by = c("interview__key","interview__id"))

##Drop old datasets
rm(hhver12,indver12,intver12,int)

##Replacing usernames with names
source(here::here("user.R"))

## Supervisor Names
source(here::here("super.R"))

##Apply Variable Labels
source(here::here("var_lab.R"))

##Change Variable Class
source(here::here("var_class.R"))

##Change Value lables
source(here::here("val_lab.R"))

## Date
hh$date <- as.Date(hh$start_time)

##Combine the two sheets
dat <- left_join(hh,ind, by = c("interview__key","interview__id"))

##Converting data frames to tibble
hh <- as_tibble(hh)
ind <- as_tibble(ind)
dat <- as_tibble(dat)

##Age
source(here::here("age.R"))

##Subset of Locked Houses
lhh <- subset(hh,locked == 1 & responsible != "trash")
ldat <- subset(dat,locked == 1 & responsible != "trash")

##Subset of Accepted Houses
chh <- subset(hh,(locked != 1 | is.na(locked)) & responsible != "trash")
cdat <- subset(dat,(locked != 1 | is.na(locked)) & responsible != "trash")

a <- colnames(ind)
b <- colnames(cdat)
c <- setdiff(b,a)
c <- c[!c %in% "responsible"]
c <- c[!c %in% "newage"]
cind <- cdat[,!(names(cdat) %in% c)]
rm(a,b,c)

#Forms per day
fpd <- table(chh$date, chh$responsible)
fpd <- as.data.frame(fpd)
names(fpd) <- c("Date", "Int", "No")

## Add Village ID
source(here::here("villid.R"))

##Write files
write_csv(v,"/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/Bhidi/bhidi_hdss.csv")
write_csv(hh,"/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/Bhidi/bhidi_hh.csv")
write_csv(ind,"/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/Bhidi/bhidi_ind.csv")
