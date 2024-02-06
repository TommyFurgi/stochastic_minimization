library(smoof)
source("ms.R")
source("prs.R")


main <- function() {
  dimensions <- 2
  num_points <- 100
  function <- makeRastriginFunction(dimensions = dim)
  
  resMSlist <- replicate(50, MS(function, num_points, dim))
  resMS <- as.numeric(resMSlist[1,])  
  points <- as.numeric(resMSlist[2,])  
  resPRS <- replicate(50, PRS(function, mean(points), dim))
  
    png("MS_Rastrigin2d_hist.png")
    hist(resMS, main = "MS_Rastrigin2d")

    dev.off() 
    png("MS_Rastrigin2d_box.png")
    boxplot(resMS, main = "MS_Rastrigin2d")
    dev.off()

    png("PRS_Rastrigin2d_hist.png")
    hist(resPRS, main = "PRS_Rastrigin2d")
    dev.off()

    png("PRS_Rastrigin2d_box.png")
    boxplot(resPRS, main = "PRS_Rastrigin2d")
    dev.off()

    testMS <- t.test(resMS, mu=0)
    print(testMS)

    testPRS <- t.test(resPRS, mu=0)
    print(testPRS)

    testBoth <- t.test(resMS, resPRS, mu=0)

    print(testBoth)
}       

main()
