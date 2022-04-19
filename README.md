# *Scyliorhinus canicula* apical enamel knot

<br/>

Repository containing analysis scripts for Thiery et al. (2022) *An epithelial signalling centre in sharks supports homology of tooth morphogenesis in vertebrates*.

---

<br/>

### Reproducibility

We have included a Docker container so that you can reproducibly re-run our analysis in RStudio Server.

#### 1) Clone repository

To re-run our analysis in RStudio Server

In order to reproduce our analysis, first download our GitHub repository:

```shell
git clone https://github.com/alexthiery/scanicula-aek
```

#### 2) Download Docker

Download Docker desktop so that you can download and run our analysis using our docker container: [alexthiery/scanicula-aek:v1.0](https://hub.docker.com/repository/docker/alexthiery/scanicula-aek)

#### 3) Run analysis in RStudio Server

Our Docker container is built from [Rocker](https://hub.docker.com/r/rocker/rstudio), so you can launch and re-run our analysis in RStudio Server.

To run this locally, open up terminal and `cd` into the cloned GitHub repository.

Next run our container.

```shell
docker run -it -e PASSWORD=password -p 8787:8787 -v ${PWD}:/home/rstudio alexthiery/scanicula-aek:v1.0
```

Once the container is running, go to `http://localhost:8787/` in the browser. Enter the credentials: `password = password` and `user = rstudio`.

Once RStudio has opened, you can find our R scripts in a folder named `R` under the `Files` tab.