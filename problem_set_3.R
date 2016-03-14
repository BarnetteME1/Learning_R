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
nrow(subset(diamonds, price < 500))
nrow(subset(diamonds, price < 250))
nrow(subset(diamonds, price >= 15000))

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
qplot(x = price/carat, data = diamonds, color = I('black'), 
      xlab = "Price of Diamonds",
      ylab = "Number of Diamonds",
      fill = I('Red')) + 
  scale_x_log10() +
  facet_wrap(~cut, scales = 'free')

#Q10
qplot(x = cut, y = price, data = diamonds, geom =  'boxplot') + 
  coord_cartesian(ylim = c(0, 6500))
ggsave("Plots/boxplot_price_by_cut.png")

qplot(x = clarity, y = price, data = diamonds, geom =  'boxplot') + 
  coord_cartesian(ylim = c(0, 6500))
ggsave("Plots/boxplot_price_by_clarity.png")

qplot(x = color, y = price, data = diamonds, geom =  'boxplot') + 
  coord_cartesian(ylim = c(0, 7500))
ggsave("Plots/boxplot_price_by_color.png")

#Q11
by(diamonds$price, diamonds$color, summary)
by(diamonds$price, diamonds$color, IQR)

#Q12
qplot(x = color, y = price/carat, data = diamonds, geom =  'boxplot') + 
  coord_cartesian(ylim = c(2000, 6000))
ggsave("Plots/boxplot_price_per_carat_by_color.png")

#Q13
