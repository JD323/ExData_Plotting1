---
title: "README.md"
author: "John Darling"
date: "Wednesday, August 12, 2015"
output: html_document
---

The four supplied R scripts reconstruct the four plots specified in Course Project 1 for Exploratory Data Analysis. The scripts utilize data on individual household electic power consumption that can be downloaded here:

https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

Each R script creates one of the four corresponding plots identified in the assignment, and saves that plot to a 480 x 480 pixel PNG file. The scripts should be saved in the same working directory as the downloaded data file (20Mb text file). The scripts depend on the R package lubridate, and assume that this package has been installed. If the lubridate package is not installed the scripts will call an error. If necessary, the lubridate package can be installed using the following code:

```{r}
install.packages("lubridate")
```

Once the scripts are saved to the working directory along with the data file, they can be run by sourcing them; for instance the script to create plot1.png can be run with the following code:

```{r}
source("plot1.R")
```

PNG files are saved to the same working directory as the data file and R scripts. 