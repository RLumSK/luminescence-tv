## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Render Output for luminescence-tv
## Author:  Sebastian Kreutzer, Geography & Earth Sciences, Aberystwyth University (United Kingdom)
## Contact: sebastian.kreutzer@aber.ac.uk
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


##RENDER PDF document
# rmarkdown::render(
#   "README.Rmd",
#   output_format = "pdf_document",
#   output_dir = "export/",
#   clean = TRUE
# )


##RENDER MD
rmarkdown::render("README.Rmd", output_format = "github_document")
file.copy(from = "README.md", to = "export/README.md", overwrite = TRUE)

##CLEAN-UP
if(file.exists("README.html"))
  file.remove("README.html")
