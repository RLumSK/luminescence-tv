## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Render Output for luminescence-tv
## Author:  Sebastian Kreutzer, IRAMAT-CRP2A, Universite Bordeaux Montaigne (France)
## Contact: sebastian.kreutzer@u-bordeaux-montaigne.fr
## Date:    Sun Dec 30 12:50:23 2018
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

##clean workspace
rm(list = ls())

##RENDER ALL
rmarkdown::render("R_helpers/README.Rmd", output_format = "all", output_dir = "Export")

##update READMED
rmarkdown::render("R_helpers/README.Rmd", output_dir = "../")

