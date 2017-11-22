# install.packages("Epi")
library(Epi)

data71 <- matrix(c(15,1712,41,3188),ncol=2,byrow = TRUE)

twoby2(data71)

data72 <- matrix(c(581,126,86,776,230,19,17,34),ncol=2)

data72

matrix(apply(data72, 1, sum),nrow = 4)%*%(matrix(apply(data72,2,sum),nrow = 1))/sum(data72)

chisq.test(data72,correct = FALSE)

data72_b <- matrix(c(776,34,26,4),ncol=2,byrow = TRUE)

data72_b

matrix(apply(data72_b, 1, sum),nrow = 2)%*%(matrix(apply(data72_b,2,sum),nrow = 1))/sum(data72_b)

chisq.test(data72_b,correct = FALSE)

Satisfaction <-
  as.table(array(c(1, 2, 0, 0, 3, 3, 1, 2,
                   11, 17, 8, 4, 2, 3, 5, 2,
                   1, 0, 0, 0, 1, 3, 0, 1,
                   2, 5, 7, 9, 1, 1, 3, 6),
                 dim = c(4, 4, 2),
                 dimnames =
                   list(Income =
                          c("<5000", "5000-15000",
                            "15000-25000", ">25000"),
                        "Job Satisfaction" =
                          c("V_D", "L_S", "M_S", "V_S"),
                        Gender = c("Female", "Male"))))

Satisfaction
