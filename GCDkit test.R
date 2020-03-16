# load the GCDkit library 

library(GCDkit)

# set working directory

setwd("C:/Geochem")

# load the data 

loadData("GRANITE1.csv")

## after loading the data, all data will be saved in WR
print(WR)
# plot R1-R2 diagram 

plotDiagram('LarochePlut')
## select the sample e.g 1:6
## The other classification diagrams can be seen in details at the following page 
?plotDiagram 

# plot spider diagrm
## The REE chondrite (Boynton 1984) was chosen for normalisation
spider(WR, selectNorm(ref = "Boynton", REE.only = TRUE), 1, 2000,
       pch = 1:6 , col = 1:6, legend = TRUE)



