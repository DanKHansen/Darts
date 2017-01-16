#Scores1 28NOV16
scores1 <- c(26,33,85,60,41,35,7,26,52,45,53,45,26,43,41,55,30,40,41,121,39,43,30,40,44,60,26,3,12,26,41,45,11,81,41,85,45,43,100,34,72,30,43,66,26,28,36,41,66,11)
#Scores2 16JAN17
scores2 <- c(41,30,33,25,100,23,40,9,50,100,43,45,60,49,85,83,58,17,45,65,50,30,24,52,86,58,28,41,52,100,45,30,45,73,73,25,100,14,50,26,85,45,26,44,21,15,39,45,43,26)

hist(scores1,freq = F)
plot(scores1,col="blue")
abline(h=mean(scores1),col='orange')
c(max(scores1),max(scores2))
c(min(scores1),min(scores2))
c(mean(scores1),mean(scores2))
c(median(scores1),median(scores2))
points(scores2,col="red")
abline(h=mean(scores2), col="green")
