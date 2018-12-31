## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Helper Functions for luminescence-tv
## Author:  Sebastian Kreutzer, IRAMAT-CRP2A, Universite Bordeaux Montaigne (France)
## Contact: sebastian.kreutzer@u-bordeaux-montaigne.fr
## Date:    Sun Dec 30 14:10:29 2018
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Load packages -------------------------------------------------------------------------------
##define needed packages
packages <- c("rvest", "xml2", "httr", "shiny")

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
##check the URLs
.url_check <- function(x){
  for(i in 1:nrow(x)){
   if(httr::http_status(httr::GET(x$URL[i]))$reason == "OK"){
    x[["URL_CHECK"]][i] <- TRUE

   }else{
     x[["URL_CHECK"]][i] <- FALSE
     warning(x$URL[i], " invalid!", call. = FALSE, immediate. = TRUE)

   }

  }

  return(x)
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
            if(e$VERSION[t] != "")
              paste0("[", e$VERSION[t], "]&nbsp;"),
            if(e$OPEN_SOURCE[t])
              "<img width=13px src='images/osi_logo.png'/>&nbsp;",
            paste0("<img width=60px src='images/badges_",e$TYPE[t],".svg' />"),
            "&nbsp;",
            paste0("<img width=60px src='images/badges_sta_",e$STATUS[t],".svg' />"),
            "&nbsp;",
            if(e$WIN[t]) "<img width=20px src='images/badges_WIN.svg' />",
            if(e$MAC[t]) "<img width=20px src='images/badges_MAC.svg' />",
            if(e$LIN[t]) "<img width=20px src='images/badges_LIN.svg' />",
            "\n <br />",
            e$DESCRIPTION[t],
            "\n <br />",
            if(e$URL_CHECK[t]){
              "<img width=20px src='images/badges_url_valid.svg' /> "
            }else{
              "<img width=20px src='images/badges_url_error.svg' /> "
            },
            e$URL[t],
            "\n",
            if(!is.na(e$CITATION[t]) && e$CITATION[t] != "")
              paste0("<br /> *<small>", e$CITATION[t], "</small>*"),
            shiny::hr()
            )
        }), collapse = "\n"),
      "\n"
      )

    })), collapse = "\n")

}

