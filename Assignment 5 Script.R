rm(list=ls(all=TRUE))
cat("\014") 


getwd()


file.edit(".gitignore")


DF <- read.csv("TotalAssetsAssignment5.csv")


class(DF)
typeof(DF)
str(DF)


if (!require("data.table")) install.packages("data.table")
library("data.table")


getDTthreads()
getDTthreads(verbose=TRUE)
setDTthreads(0)
getDTthreads()

DF <- fread("TotalAssetsAssignment5.csv", header="auto", 
            data.table=FALSE)

class(DF)
typeof(DF)
str(DF)
names(DF)


header <- read.table("TotalAssetsAssignment5.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("TotalAssetsAssignment5.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)