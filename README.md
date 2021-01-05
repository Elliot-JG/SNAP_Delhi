# GY7707- Multispectal analysis at New Delhi

## :wave: Introduction <a name="introduction"></a>
This is a repository for data analysis of Spectral information at New Delhi, 10/11/2020. This was completed to meet the requirements of [GY7705 Remote Sensing at the University of Leicester](https://le.ac.uk/modules/2020/gy7705).

Sites across New Delhi were chosen due to their cover types (fog, cloud or land). Using SNAP, the spectral information at these sites (10*10 metre pixels) was extracted and stored as .CSV files. Spectral libraries of these cover types was constructed by furthe assesing this information in R 

This Git is broken down into 2 stages: 

1. The creation of a spectral library for each cover type
2. Creating histograms for each cover type (the frequency of pixel vales at band 4 [665 nm])


## :dog: Table of contents 
* [General info](#introduction)
* [Prerequisites](#prerequisites)
* [Data](#data)
* [Usage](#usage)
* [Guide to the files](#guide)


## :rose: Prerequisites <a name="prerequisites"></a>
The dependencies for the assignment are:
* [tidyverse](https://www.tidyverse.org/)
* [dplyr](https://dplyr.tidyverse.org/)
* [readr](https://readr.tidyverse.org/)
* [ggplot2](https://ggplot2.tidyverse.org/)
* [gridExtra](https://cran.r-project.org/web/packages/gridExtra/gridExtra.pdf)
* [magrittr](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html)
* [stringr](https://stringr.tidyverse.org/)

Note: Some of these are within the tidyverse (stringr for example) but these are all listed in the spirit of transparency. 

## :evergreen_tree: Data <a name="data"></a>
The data used in this assignment is in [GY7702_data](https://github.com/Elliot-JG/SNAP_Delhi/tree/main/Data). There are two .csv files:
* **cloud_land_smog.csv**
  + Histogram bin data for all cover types
  
* **Clouds.csv**
  + Histogram bin data for clouds
  
* **Land.csv**
  + Histogram bin data for land
  
* **Smog.csv**
  + Histogram bin data for smog 
  
* **spectra_3.csv**
  + Spectra data for all cover types
  

This data came from a Sentinel 2 satellite imagery. For more information, visit the [Sentinel 2 page](https://sentinel.esa.int/web/sentinel/missions/sentinel-2)

## :lemon: Usage <a name="usage"></a>
* To clone this git repository using [Git Bash](https://gitforwindows.org/):
```r
$ git clone https://github.com/Elliot-JG/SNAP_Delhi.git
```

## :octopus: Guide to the files <a name="guide"></a>
* **Plotting_histograms.R**  
  + In this file you will find the data to plot the histograms
* **Plotting_wavelengths.R** 
  + In this file you will find the data to plot the spectral libraries for the 3 cove types 

