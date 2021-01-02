library(tidyverse)
library(readr)
library(dplyr)
library(ggplot2)
library(stringr)
library(magrittr)

# FIX THESE PATHS!! DATA NOW IN DATA FOLDER 

clouds <- readr::read_csv("Data/Clouds.csv")
land <- readr::read_csv("Data/Land.csv")
smog <- readr::read_csv("Data/Smog.csv")

# Frequency of reflectance values in B4 

cloud_hist <- ggplot(clouds, aes(
    x = Bin_center_value, 
    y = Bin_counts/1214))+
  geom_bar(
    stat='identity',
    fill = "red")+
  scale_x_binned(
    n.breaks = 20)+
  xlab(expression(R[rs]~at~665~nm))+
  ylab("Frequency")+
  theme(text = element_text(size=27))

land_hist <- ggplot(land, aes(
    x = Bin_center_value, 
    y = Bin_counts/6657))+
  geom_bar(
    stat='identity',
    fill = "green3")+
  scale_x_binned(
    n.breaks = 20)+
  xlab(expression(R[rs]~at~665~nm))+
  ylab("Frequency")+
  theme(text = element_text(size=27))

smog_hist <- ggplot(smog, aes(
  x = Bin_center_value, 
  y = Bin_counts/4573))+
  geom_bar(
    stat='identity',
    fill = "blue")+
  scale_x_binned(
    n.breaks = 20)+
  xlab(expression(R[rs]~at~665~nm))+
  ylab("Frequency")+
  theme(text = element_text(size=27))


grid.arrange(cloud_hist, smog_hist, land_hist)
