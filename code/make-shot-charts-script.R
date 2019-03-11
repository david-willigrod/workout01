#Creating Shot Charts
##create pdf of shot chart for Warriors players
###inputs: data.frame of players shots
###outputs; pdf of shot chart
library(dplyr)
library(ggplot2)
library(readr)
library(jpeg)
library(grid)

load("code/shots-data-tables.RData")
klay_scatterplot <- ggplot(data = thompson) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

# court image (to be used as background of plot)
court_file <- "images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

# shot chart with court background
klay_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: klay thompson (2016 season)') +
  theme_minimal()

pdf(file = 'images/klay-thompson-shot-chart.pdf', 
    width = 6.5, height = 5)

andre_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: andre iguodala (2016 season)') +
  theme_minimal()

pdf(file = 'images/andre-iguodala-shot-chart.pdf', 
    width = 6.5, height = 5)

draymond_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: draymond green (2016 season)') +
  theme_minimal()

pdf(file = 'images/draymond-green-shot-chart.pdf', 
    width = 6.5, height = 5)

kevin_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: kevin durant (2016 season)') +
  theme_minimal()

pdf(file = 'images/kevin-durant-shot-chart.pdf', 
    width = 6.5, height = 5)

stephen_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: stephen curry (2016 season)') +
  theme_minimal()

pdf(file = 'images/stephen-curry-shot-chart.pdf', 
    width = 6.5, height = 5)
