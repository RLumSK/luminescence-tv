## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Render Output for luminescence-tv
## Author:  Sebastian Kreutzer, IRAMAT-CRP2A, Universite Bordeaux Montaigne (France)
## Contact: sebastian.kreutzer@u-bordeaux-montaigne.fr
## Date:    Sun Dec 30 12:50:23 2018
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

##clean workspace
rm(list = ls())

##RENDER HTML
rmarkdown::render(
  "README.Rmd",
  output_format = "html_document",
  output_dir = "export/",
  clean = TRUE
)

##RENDER MD
rmarkdown::render("README.Rmd", output_format = "github_document")
file.copy(from = "README.md", to = "export/README.md", overwrite = TRUE)

##CLEAN-UP
if(file.exists("README.html"))
  file.remove("README.html")
