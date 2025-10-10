## Destination path ---- 
path <- here::here("data", "pantheria")

## Create destination directory ----
dir.create(path, showWarnings = FALSE, recursive = TRUE)

## File name ----
filename <- "PanTHERIA_1-0_WR05_Aug2008.txt"

## GitHub base URL ----
base_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/"

## Build full URL ----
full_url <- paste0(base_url, filename)

## Build full path ----
dest_file <- file.path(path, filename)

## Download file ----
utils::download.file(url      = full_url,
                     destfile = dest_file,
                     mode     = "wb")


#option:

# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Jane Doe <jane.doe@mail.me>

## Download PanTHERIA database ----
pantheria_path  <- dl_pantheria_data()

usethis::use_package(package = "here")

## Installation des packages manquants ----
devtools::install_deps(upgrade = "never")

## Chargement des packages et des fonctions R ----
devtools::load_all()





