## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Title:   Helper Functions for luminescence-tv
## Author:  Sebastian Kreutzer, IRAMAT-CRP2A, Universite Bordeaux Montaigne (France)
## Contact: sebastian.kreutzer@u-bordeaux-montaigne.fr
## Initial:    Sun Dec 30 14:10:29 2018
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Load packages -------------------------------------------------------------------------------
##define needed packages
packages <- c("rvest", "xml2", "httr", "shiny", "RLumBuild")

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

        ##make sure everything is correct, manual notice
        if(grepl(pattern = "was removed from the CRAN", x = descr)){
          message(descr)
          return(c(df[["DESCRIPTION"]][x], df[["VERSION"]][x]))

        }else{
          version <- rvest::html_table(xml)[[1]][[2]][[1]]
          return(c(descr, version))

        }

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
.url_check <- function(x, verbose = FALSE){
  for(i in 1:nrow(x)){
   test <- try(httr::http_status(httr::GET(x$URL[i])), silent = TRUE)

   if(class(test) != "try-error" && test$reason == "OK"){
    x[["URL_CHECK"]][i] <- TRUE

    if(verbose){
      RLumBuild:::.success(paste0("#",i,": ", x$URL[i]))
      cat("\n")
    }

   }else{
     x[["URL_CHECK"]][i] <- FALSE

     if(verbose){
       RLumBuild:::.failure(paste0("#",i,": ", x$URL[i]))
       cat("\n")
     }

     warning(paste0("#",i," URL test failed for ", x$URL[i]), call. = FALSE)


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

##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
##get last commit on GitHub
##
#' @param df [data.frame]
.last_GitHubcommit <- function(df){
  ##extract all GitHub software
  id <- grep(pattern = "github", x = df[["URL"]], fixed = TRUE)

  ##roll
  if(length(id) != 0){
    ##run over URLs
    for(i in id){
      URL <- df[["SOURCE_CODE_URL"]][i]
      REPO <- regmatches(URL, regexec("(?<=https://github.com/).+", URL, perl = TRUE))[[1]]

      ##set urls
      date_url <- paste0("https://api.github.com/repos/", REPO,"/commits?per_page=1")
      version_url <- paste0("https://api.github.com/repos/",REPO, "/tags")

      ##get information
      temp_date <- httr::GET(date_url,httr::accept_json())
      temp_version <- httr::GET(version_url,httr::accept_json())

      ##extract data
      date <- temp_date$all_headers[[1]]$headers$`last-modified`
      version <- jsonlite::parse_json(temp_version)

      ##write to df
      if(!is.null(date)){
        df[["VERSION_DATE"]][i] <- date

        if(length(version) > 0)
          df[["VERSION"]][i] <- version[[1]]$name

      }else{
        warning(date, immediate. = TRUE, call. = FALSE)
      }
    }

    return(df)


  }else{
    return(df)

  }

}

# Render list ---------------------------------------------------------------------------------
##render markdown list, this gives more control
.render_list <- function(x){


    ##render list
    output <- paste(unlist(lapply(x, function(e){
      c(paste("### ", e$TASK[1]),
        paste(lapply(1:nrow(e), function(t){
          paste0(
            "* <b><big>",
            e$NAME[t],
            "</b></big> ",
            if(!is.na(e$VERSION[t]) && e$VERSION[t] != "")
              paste0("[", e$VERSION[t], "]&nbsp;"),
            if(!is.na(e$VERSION_DATE[t]) && e$VERSION_DATE[t] != "")
              paste0("[", e$VERSION_DATE[t], "]&nbsp;"),
            if(e$OPEN_SOURCE[t]) "![](images/osi_logo.png)&nbsp;",
            paste0("<img width=79px src='images/badges_",e$TYPE[t],".svg' />"),
            "&nbsp;",
            paste0("<img width=70px src='images/badges_sta_",e$STATUS[t],".svg' />"),
            "&nbsp;",
            if(e$WIN[t]) "![](https://img.shields.io/badge/-WIN-lightgrey.svg)&nbsp;",
            if(e$MAC[t]) "![](https://img.shields.io/badge/-MAC-lightgrey.svg)&nbsp;",
            if(e$LIN[t]) "![](https://img.shields.io/badge/-LIN-lightgrey.svg)&nbsp;",
            "\n <br />",
            e$DESCRIPTION[t],
            "\n <br />",
            if(e$URL_CHECK[t]){
              "![](https://img.shields.io/badge/-URL-lightgrey.svg)&nbsp;"
            }else{
              "![](https://img.shields.io/badge/-URL-red.svg)&nbsp;"
            },
            e$URL[t],
            "\n",

            if(!is.na(e$SOURCE_CODE_URL[t]) && e$SOURCE_CODE_URL[t] != "")
              paste0("| Source code: ", e$SOURCE_CODE_URL[t], "\n"),

            if(!is.na(e$DOI[t]) && e$DOI[t] != "")
              paste0("[![](https://img.shields.io/static/v1.svg?style=flat&label=DOI&message=",e$DOI[t],"&color=blue)](https://doi.org/",e$DOI[t],")", "\n"),

            if(!is.na(e$CITATION[t]) && e$CITATION[t] != "")
              paste0("<br /> *<small>", e$CITATION[t], "</small>*"),
            shiny::hr()
            )
        }), collapse = "\n"),
      "\n"
      )

    })), collapse = "\n")

    ##return
    return(output)

}
