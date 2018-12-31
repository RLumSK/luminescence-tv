## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Helper Functions for luminescence-tv
## Author:  Sebastian Kreutzer, IRAMAT-CRP2A, Universite Bordeaux Montaigne (France)
## Contact: sebastian.kreutzer@u-bordeaux-montaigne.fr
## Date:    Sun Dec 30 14:10:29 2018
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Load packages -------------------------------------------------------------------------------
##define needed packages
packages <- c("rvest", "xml2", "httr")

##if not installed, grep them
id_missing <- which(!packages %in% installed.packages()[,"Package"])
if(length(id_missing) > 0)
  install.packages(packages[id_missing])


# Helper functions ----------------------------------------------------------------------------

##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
##fill description and update version for R packages
.fill_description <- function(df){
  temp <- lapply(1:nrow(df), function(x){
    if(df[["DESCRIPTION"]][x] == "" &&
       grepl(pattern = "CRAN",
             x = df[["URL"]][x],
             fixed = TRUE)){

      ##access CRAN page and download information
      xml <- try(xml2::read_html(df[["URL"]][x]))

      if(class(xml)[1] == "try-error"){
        return(c(NA, df[["VERSION"]][x]))

      }else{
        descr <- rvest::html_text(rvest::html_nodes(x = xml, css = "p")[1])
        version <- rvest::html_table(xml)[[1]][[2]][[1]]
        return(c(descr, version))
      }
    }else{
      return(df[x,c("DESCRIPTION", "VERSION")])

    }

  })

    ##return
    df[["DESCRIPTION"]] <- unlist(temp)[seq(1, length(temp) * 2, by = 2)]
    df[["VERSION"]] <- unlist(temp)[seq(2, length(temp) * 2, by = 2)]
    return(df)
}

##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
##group software by task and sort by name
.sort_software <- function(df){
    ##split by TASK
    temp <- split(x = df, f = df$TASK)

    ##sort
    lapply(temp, function(x) x[order(x$NAME),])

}


# Render list ---------------------------------------------------------------------------------
##render markdown list, this gives more control
.render_list <- function(x){
    paste(unlist(lapply(x, function(e){
      c(paste("### ", e$TASK[1]),
        paste(lapply(1:nrow(e), function(t){
          paste0(
            "* **",
            e$NAME[t],
            "** ",
            switch(
              EXPR = e$TYPE[t],
              "R package" =  "<img width=50px src='images/r_package.svg' /> ",
              "R scripts" =  "<img width=50px src='images/r_scripts.svg' /> ",
              "web service" =  "<img width=48px src='images/web_service.svg' /> ",
              "application" =  "<img width=48px src='images/application.svg' /> "
            ),
            switch(
              EXPR = e$STATUS[t],
              active =  "<img width=80px src='images/status_active.svg' /> ",
              unpublished = "<img width=80px src='images/status_unpublished.svg' /> ",
              abandoned = "<img width=80px src='images/status_abandoned.svg' /> "
            ),
            "\n <br />",
            e$DESCRIPTION[t],
            "\n (v",
            e$VERSION[t],
            " | ",
            e$PLATFORMS[t],
            ")\n <br />",
            if(httr::http_status(httr::GET(e$URL[t]))$reason == "OK"){
              "<img width=20px src='images/url_valid.svg' /> "
            }else{
              "<img width=20px src='images/url_error.svg' /> "
            },
            e$URL[t],
            "\n <br />",
            if(!is.na(e$CITATION[t]) && e$CITATION[t] != ""){
              paste0("*<small>",
              e$CITATION[t],
              "</small>*")
            }else{
               ""
             }
            )
        }), collapse = "\n"),
      "\n"
      )

    })), collapse = "\n")

}

