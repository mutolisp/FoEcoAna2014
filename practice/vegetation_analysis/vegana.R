# load
library(vegan)
raw_head = read.csv('plot_header.csv', header = T, row.names=1)
raw_plot = read.csv('species.csv', header = T)
veg_plot = reshape(raw_plot,timevar = "species", idvar="plotid",
                   v.names=NULL, direction = "wide")
row.names(veg_plot) = veg_plot$plotid
dim(veg_plot)
veg_plot = veg_plot[,2:dim(veg_plot)[2]]
veg_plot[is.na(veg_plot)] = 0

