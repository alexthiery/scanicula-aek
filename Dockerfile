FROM  rocker/tidyverse:4.0.4

LABEL authors="alex.thiery@crick.ac.uk" \
      description="Docker image containing all requirements to run 10x downstream analysis in Seurat"

# Install apt packages
RUN apt-get update \
      && apt-get install -y --no-install-recommends \
      apt-utils \
      build-essential

RUN   R -e "install.packages(c('Rmisc', 'ggplot2', 'lme4', 'lsmeans', 'multcompView', 'Morpho'))" && \
      R -e "devtools::install_version('geomorph', version = '3.0.7', repos = 'http://cran.us.r-project.org')"