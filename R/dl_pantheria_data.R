dl_pantheria_data=function(){
  ## Destination path ---- 
  path <- here::here("data", "pantheria")
  
  ## Create destination directory ----
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  
  ## File name ----
  filename <- "PanTHERIA_1-0_WR05_Aug2008.txt"
  
  ## GitHub base URL ----
  url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/"
  
  ## Build full URL ----
  full_url <- paste0(url, filename)
  
  ## Build full path ----
  dest_file <- file.path(path, filename)
  
  ## Download file ----
  utils::download.file(url      = full_url,
                       destfile = dest_file,
                       mode     = "wb")
  
  return(dest_file)
}

dl_pantheria_data()
