setwd('~/R')
reddit <- read.csv('reddit.csv')
str(reddit)
dim(reddit)

table(reddit$employment.status)
summary(reddit)
levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)

levels(reddit$age.range) <- c('Under 18', '18-25', '35-44', '45-54', '55-64',
                              '65 or Above', 'NA')
qplot(data = reddit, x = age.range)
reddit$age.range

#teacher's way

reddit$age.range <- ordered(reddit$age.range, levels = c('Under 18', '18-25',
                                                         '35-44', '45-54', '55-64',
                                                         '65 or Above', 'NA'))