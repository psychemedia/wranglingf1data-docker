#
# Wrangling F1 Data Dockerfile
#
# https://github.com/psychemedia/wranglingf1data-docker
#

# Pull RStudio base image with Hadley packages
FROM rocker/hadleyverse

RUN mkdir -p /home/rstudio/wranglingf1data
RUN chmod 777 /home/rstudio/wranglingf1data

#ADD wranglingf1data.Rproj /home/rstudio/wranglingf1data/wranglingf1data.Rproj

ADD ergastR-core.R /home/rstudio/wranglingf1data/ergastR-core.R
ADD ergastdb13.sqlite /home/rstudio/wranglingf1data/ergastdb13.sqlite

ADD scraperwiki.sqlite /home/rstudio/wranglingf1data/scraperwiki.sqlite