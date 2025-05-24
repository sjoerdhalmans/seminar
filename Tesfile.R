library(tidyverse)

data()
view(mpg)

?mpg

glimpse(mpg)

?filter

mpg2 <- filter(mpg, cty >= 20)

view(mpg2)

mpg_ford <- filter(mpg, manufacturer == "ford")

view(mpg_ford)

mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)

view(mpg_metric)

glimpse(mpg_metric)

View(mpg)

mpg %>% 
  group_by(class) %>%
  summarise(mean(cty),
            median(cty))

ggplot(mpg, aes(x = cty)) + geom_histogram()

ggplot(mpg, aes(x = cty)) + geom_bar()


