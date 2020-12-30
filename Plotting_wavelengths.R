library(tidyverse)
library(readr)
library(dplyr)
library(ggplot2)
library(stringr)
library(magrittr)
library(gridExtra)


# FIX THESE PATHS!! DATA NOW IN DATA FOLDER 

# Data Wrangling ----------------------------------------------------------

  # Read in complete spectra data for all cover types - 90 locations of smog, cloud and land  
spectra <- readr::read_csv("spectra_3.csv", col_names =TRUE)

  # Pivot longer to prep for plotting later
spectra_longer <- pivot_longer(spectra, cols = (Cloud:Smog_17), names_to = "Var", values_to = "Val")

  # Drop suffic after land types and put in new column, to group by later 
spectra_longer$Land_type=gsub("_.*","",spectra_longer$Var)


# Filtering out different cover types -------------------------------------

  # Cloud
cloud_spectra <- spectra_longer %>%
  filter(Land_type == "Cloud")

  # Land 
land_spectra <- spectra_longer %>%
  filter(Land_type == "Land")

  # Smog 
smog_spectra <- spectra_longer %>%
  filter(Land_type == "Smog")



# Plotting ----------------------------------------------------------------

  # Plotting all spectra (appendix)
ggplot2::ggplot(spectra_longer, aes(
    x = Wavelength, 
    y = Val, 
    group = Var, 
    colour = Land_type)) + 
  geom_line()

  # Cloud spectra
cloud_plot <- ggplot2::ggplot(cloud_spectra, aes(
    x = Wavelength, 
    y = Val, 
    group = Var, 
    colour = Land_type)) + 
  geom_line(
    colour="red", 
    size = 1)+
  labs(y=expression(R[rs]))+
  xlab("Wavelength (nm)")


  # Smog spectra
smog_plot <- ggplot2::ggplot(smog_spectra, aes(
    x = Wavelength, 
    y = Val, 
    group = Var, 
    colour = Land_type)) + 
  geom_line(
    colour="blue", 
    size = 1)+
  labs(y=expression(R[rs]))+
  xlab("Wavelength (nm)")

  # Land spectra
land_plot <- ggplot2::ggplot(land_spectra, aes(
    x = Wavelength, 
    y = Val, 
    group = Var, 
    colour = Land_type)) + 
  geom_line(
    colour="green3", 
    size = 1)+
  labs(y=expression(R[rs]))+
  xlab("Wavelength (nm)")+
  scale_y_continuous(breaks = c(0.10, 0.15, 0.20, 0.25, 0.30))

  # Combine plots 
grid.arrange(cloud_plot, smog_plot, land_plot)


