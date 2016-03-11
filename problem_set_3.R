library(ggplot2)
data("diamonds")

# Q1
dim(diamonds)
summary(diamonds)
?diamonds
diamonds$color

#Q2
qplot(x = price, data = diamonds)

#Q3
summary(diamonds$price)
mean(diamonds$price)
median(diamonds$price)

#Q4
summary(diamonds$price < 500)
summary(diamonds$price < 250)
summary(diamonds$price >= 15000)

#Q5
qplot(x = price, data = diamonds, binwidth = 250, color = I('black'), 
      xlab = "Price of Diamonds",
      ylab = "Number of Diamonds",
      fill = I('Red')) + 
  scale_x_continuous(breaks = seq(0, 19000, 2500))

#Q6
qplot(x = price, data = diamonds, binwidth = 250, color = I('black'), 
      xlab = "Price of Diamonds",
      ylab = "Number of Diamonds",
      fill = I('Red')) + 
  scale_x_continuous(breaks = seq(0, 19000, 2500)) + 
  scale_y_continuous(breaks = seq(0, 3000, 500)) +
  facet_wrap(~cut)

#Q7
by(diamonds$price, diamonds$cut, max)
by(diamonds$price, diamonds$cut, min)
by(diamonds$price, diamonds$cut, median)

#Q8
qplot(x = price, data = diamonds, binwidth = 250, color = I('black'), 
      xlab = "Price of Diamonds",
      ylab = "Number of Diamonds",
      fill = I('Red')) + 
  scale_x_continuous(breaks = seq(0, 19000, 2500)) +
  facet_wrap(~cut, scales = 'free')

#Q9
qplot(x = price, data = diamonds, color = I('black'), 
      xlab = "Price of Diamonds",
      ylab = "Number of Diamonds",
      fill = I('Red')) + 
  scale_x_continuous(breaks = seq(0, 19000, 2500)) +
  facet_wrap(~cut, scales = 'free') + 
  scale_x_log10()