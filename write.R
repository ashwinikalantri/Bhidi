#Write files
write_csv(v,"/Volumes/GoogleDrive/Shared drives/HDSS/GIS/hdss.csv")
write_csv(shiny,"/Volumes/GoogleDrive/Shared drives/HDSS/Shiny/hdss.csv")
cdat_p <- cdat %>% dplyr::select(newage, gender, interview__key)
cdat_p<-cdat_p[!(cdat_p$gender=="-999999999"),]
cdat_p<-cdat_p[!(cdat_p$newage<0),]
write_csv(cdat_p,"/Volumes/GoogleDrive/Shared drives/HDSS/cdat.csv")
write_csv(v,"/Volumes/GoogleDrive/Shared drives/HDSS/tableau/hh.csv")
write_csv(lhh,"/Volumes/GoogleDrive/Shared drives/HDSS/locked.csv")
write_csv(cdat,"/Volumes/GoogleDrive/Shared drives/HDSS/hdss_f.csv")
write_csv(cind,"/Volumes/GoogleDrive/Shared drives/HDSS/tableau/ind.csv")
write_csv(chh,"/Volumes/GoogleDrive/Shared drives/HDSS/tableau/hh.csv")
write_csv(cind,"/Volumes/GoogleDrive/My Drive/HDSS/tableau/ind.csv")
write_csv(chh,"/Volumes/GoogleDrive/My Drive/HDSS/tableau/hh.csv")
write_csv(hh,"/Volumes/GoogleDrive/My Drive/HDSS/tableau/hh_f.csv")
write_csv(ind,"/Volumes/GoogleDrive/My Drive/HDSS/tableau/ind_f.csv")
write.csv(fpd,"/Volumes/GoogleDrive/Shared drives/HDSS/Shiny/fpd.csv")
write_csv(v,"/Volumes/GoogleDrive/Shared drives/HDSS/HDSS Data/hdss.csv")