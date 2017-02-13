library(ggplot2)
#Scores1 28NOV16
scores1 <- c(26,33,85,60,41,35,7,26,52,45,53,45,26,43,41,55,30,40,41,121,39,43,30,40,44,60,26,3,12,26,41,45,11,81,41,85,45,43,100,34,72,30,43,66,26,28,36,41,66,11)
#Scores2 16JAN17
scores2 <- c(41,30,33,25,100,23,40,9,50,100,43,45,60,49,85,83,58,17,45,65,50,30,24,52,86,58,28,41,52,100,45,30,45,73,73,25,100,14,50,26,85,45,26,44,21,15,39,45,43,26)
#Scores3 23JAN17
scores3 <- c(85,40,70,9,58,45,26,45,85,7,23,30,22,41,45,28,26,100,95,100,41,45,26,26,81,30,31,180,85,41,60,66,100,26,81,16,33,70,24,30,45,45,140,81,30,41,60,17,60,45)
#Scores4 01FEB17
scores4 <- c(97,36,26,30,28,11,39,26,22,45,86,30,41,37,9,85,85,39,53,70,95,33,26,11,26,34,20,49,41,94,45,60,41,22,60,30,43,45,36,95,39,26,95,7,28,66,26,7,80,11)
#Scores5 06FEB17
scores5 <- c(100,37,45,68,132,41,58,32,41,28,36,95,60,60,36,38,7,92,21,100,26,83,60,28,45,55,45,47,77,60,100,7,85,41,45,43,36,26,19,25,66,64,76,26,76,26,55,58,45,26)


scores <- c(scores1,scores2,scores3,scores4,scores5)

ScoreTable <- data.frame(1:50,scores1,scores2,scores3,scores4,scores5)
colnames(ScoreTable)[1] <- 'Attempts'

gg <- ggplot(ScoreTable,aes(Attempts))
gg <- gg + geom_point(aes(y=scores1))
gg <- gg + geom_point(y=scores2)
gg <- gg + geom_point(y=scores3)
gg <- gg + geom_point(y=scores4)
gg <- gg + geom_point(y=scores5)
gg <- gg + geom_hline(color='blue', yintercept =  mean(scores), size = 1)
gg <- gg + geom_hline(color='yellow', yintercept =  140, size = 1)
gg <- gg + geom_hline(color='orange', yintercept =  160, size = 1)
gg <- gg + geom_hline(color='red', yintercept =  180, size = 1)
gg <- gg + labs(y='Scores')
gg
