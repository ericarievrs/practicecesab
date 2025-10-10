# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
devtools::load_all()

# Run project ----

## Download raw data ----
source(here::here("analyses", "download-data.R"))
