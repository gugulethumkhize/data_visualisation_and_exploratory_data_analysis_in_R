## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# library(tidyverse)
# library(dplyr)
# library(magrittr)
# 
# 


## ------------------------------------------------------------------------------------------------------------------------

library(ggplot2)
ggplot(diamonds, aes(x=carat, y=price, colour = cut)) 


## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# ggplot(diamonds, aes(x=carat, y=price, colour = cut))+geom_point()+
#   geom_smooth(method = "lm")


## ------------------------------------------------------------------------------------------------------------------------

ggplot(diamonds, aes(x=cut, y=price))+
  geom_bar(stat = "identity")


## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# ggplot(diamonds, aes(x=carat, y=price, colour = cut))+
#   geom_point(alpha = 0.3)+geom_smooth(method = "lm", se = FALSE)+
#   facet_wrap(~ cut)


## ------------------------------------------------------------------------------------------------------------------------
ggplot(diamonds, aes(x=carat, y=price, colour = cut))+geom_point(alpha = 0.4)+ 
  labs(
    title = "Relationship between Carat and Price",
    subtitle = "Regression lines by diamond cut",
    x = "Carat (Weight)",
    y = "Price (USD)",
    caption = "Source: Diamonds Data (ggplot)")+
  theme_classic()+
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5))
  


## ------------------------------------------------------------------------------------------------------------------------
ggplot(diamonds, aes(x=carat, y=price, colour = cut))+
  geom_point(alpha = 0.4)+
  labs(
    title = "Relationship between Carat and Price",
    x = "Carat (Weight)",
    y = "Price (USD)")+
  theme_bw()+
    theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5))
  


## ------------------------------------------------------------------------------------------------------------------------
ggplot(diamonds, aes(x=carat, y=price, colour = cut))+
  geom_point(alpha = 0.4)+
  labs(
    title = "Relationship between Carat and Price",
    x = "Carat (Weight)",
    y = "Price (USD)")+
  theme_classic()+
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
        axis.title.x = element_text(size = 10, colour = "blue"),
        axis.title.y = element_text(size = 10, colour = "orange")
  )


## ------------------------------------------------------------------------------------------------------------------------
ggplot(diamonds, aes(x=carat, y=price, colour = cut))+
  geom_point(alpha = 0.4)+
  labs(
    title = "Relationship between Carat and Price",
    x = "Carat (Weight)",
    y = "Price (USD)",
    colour = "Diamond Cut")+
  theme_bw()+
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10))+
  scale_colour_manual(                
    name = "Cut Quality",
    values = c("red", "blue", "green", "purple", "orange"),
    labels = c("Fair", "Good", "Very Good", "Premium", "Ideal"))



## ------------------------------------------------------------------------------------------------------------------------
ggplot(economics, aes(date, unemploy))+
  geom_line()+
  labs(
    title = "Unemployment Trend Analysis",
    x = "Years",
    y = "Number of Unemployed (in thousands)",
    caption = "Source: Economics Data")+
  theme_bw()+
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        plot.caption = element_text(size = 6, colour = "gray30"))


## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# library(plotly)


## ------------------------------------------------------------------------------------------------------------------------
p <- ggplot(economics, aes(date, unemploy))+
  geom_line()+
  labs(
    title = "Unemployment Trend Analysis",
    x = "Years",
    y = "Number of Unemployed (in thousands)",
    caption = "Source: Economics Data")+
  theme_bw()+
  theme(plot.title = element_text(size = 10, face = "bold", hjust = 0.5),
        axis.title.x = element_text(size = 8),
        axis.title.y = element_text(size = 8),
        plot.caption = element_text(size = 6, colour = "gray30"))

plotly::ggplotly(p, width = 600, height = 400)




## ------------------------------------------------------------------------------------------------------------------------

library(gganimate)



## ------------------------------------------------------------------------------------------------------------------------

library(gifski)
library(av)


## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# pl <- ggplot(economics, aes(date, unemploy))+
#   geom_line()+
#   labs(
#     title = "Unemployment trend",
#     x = "Years",
#     y = "Number of unemployed (in thousands)",
#     caption = "Source: Economics Data")+
#   geom_text(aes(label = unemploy), hjust = -0.2, vjust = -0.5,
#             show.legend = FALSE)+
#   theme_bw()+
#   theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
#         axis.title.x = element_text(size = 10),
#         axis.title.y = element_text(size = 10),
#         plot.caption = element_text(size = 6, colour = "gray30"))+
#   transition_reveal(date)
# 
# pl_anim <- animate(pl, width = 600, height = 400,
#                    nframes = 120, fps = 5,
#                    renderer = gifski_renderer())
# 
# anim_save("unemployment_trend.gif", animation = pl_anim)
# 
# 


## ----echo=FALSE----------------------------------------------------------------------------------------------------------

knitr::include_graphics("unemployment_trend.gif")



## ------------------------------------------------------------------------------------------------------------------------

library(gapminder)




## ----eval=FALSE----------------------------------------------------------------------------------------------------------
# 
# anim <- ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, colour = country)) +
#   geom_point(alpha = 0.7, show.legend = FALSE) +
#   scale_size(range = c(2, 12)) +
#   scale_x_log10() +
#   facet_wrap(~continent) +
#   labs(title = "Year: {frame_time}",
#        x = "GDP per capita",
#        y = "Life expectancy") +
#   transition_time(year) +
#   ease_aes("linear")
# 
# animate(anim, width = 600, height = 400, fps = 2,
#         nframes = 30, renderer = gifski_renderer())
# 
# anim_save("lifeexpectancy_trend.gif")
# 
# 


## ----echo=FALSE----------------------------------------------------------------------------------------------------------

knitr::include_graphics("lifeexpectancy_trend.gif")



