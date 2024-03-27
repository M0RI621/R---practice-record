library(dplyr)
library(ggplot2)
library(statsr)
data(arbuthnot)
arbuthnot
dim(arbuthnot)
names(arbuthnot)
arbuthnot$boys
ggplot(data = arbuthnot, aes(x = year, y = girls)) +  geom_point()
data(present)
present
dim(present)
present <- present %>% mutate(total = boys + girls)
present <- present %>% mutate(prop_boys = boys/total)
ggplot(present, aes(x=year,y=prop_boys)) + geom_line() + geom_point()
present <- present %>% mutate(more_boys = boys > girls)
present$more_boys
present <- present %>% mutate(prop_boy_girl = boys/girls)
ggplot(present, aes(x=year,y=prop_boy_girl)) + geom_line() + geom_point()
