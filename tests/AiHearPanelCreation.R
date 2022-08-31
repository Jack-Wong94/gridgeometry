library(gridGeometry, lib.loc = "D:/Stats781/library")

l1 = linesGrob(x = 0.5 - c(0.4, 0.4), y = 0.5 - c(0.25, 0.75))
l2 = linesGrob(x = 0.5 - c(0.6, 0.6), y = 0.5 - c(0.25, 0.75))
l3 = linesGrob(x = 0.5 - c(0.4, 0.6), y = 0.5 - c(0.5, 0.5))

l = gList(l1, l2, l3)

grid.newpage()
g <- grid.polylineoffset(l, 0.02, endtype = "openround", jointype = "round")

coord <- polylineoffset(l, 0.02, endtype = "openround", jointype = "round")

entry <- paste0("Panel 1,", "Wall 1,", "13mm Plasterboard on studs,", "0")
for (i in 1 : length(coord[[1]]$x))
{
  entry <- paste0(entry, ",", coord[[1]]$x[i], " ", coord[[1]]$y[i])
}


fileConn<-file("D:/PanelCoordinate.csv")
writeLines(entry, fileConn)
close(fileConn)
