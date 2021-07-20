#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# This script handles flexdashboard knitting in worfklowr frameworks
#
# By: mike gaunt, michael.gaunt@wsp.com
#
# README: it knits flexdashboard and places in the docs/ folder
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#path set-up====================================================================
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#project file performs this task - section is not required

#source helpers/utilities=======================================================
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#zz_localG performs this task - section is not required

#library set-up=================================================================
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#zz_localG performs this task - section is not required

#CODE BODY START================================================================


#!/usr/bin/env Rscript

# Run this script from the root of the workflowr
# project to add the dashboard to the workflowr website.

#change this name to fit file you want to knit
#do not include .Rmd extension
# dashboard_name = "dashboard"
#
# #change this file path to fit file you want to knit
# #do not include file name
# dashboard_folder = "dashboard/dashboard_example/"
#
# #do not change these paths
# dashboard_path_rmd = stringr::str_glue("{dashboard_folder}{dashboard_name}.Rmd")
# dashboard_path_html = stringr::str_glue("{dashboard_folder}{dashboard_name}.html")
# file_rename = stringr::str_glue("docs/{dashboard_name}_{Sys.Date()}.html")
#
# rmarkdown::render(dashboard_path_rmd)
# file.rename(dashboard_path_html,
#             file_rename)

#this is a convenience function that performs this script but without having to open it
knit_dashboard =  function(dashboard_name, dashboard_folder, doc_name = dashboard_name, overwrite = F){
  dashboard_path_rmd = stringr::str_glue("{dashboard_folder}{dashboard_name}.Rmd")
  dashboard_path_html = stringr::str_glue("{dashboard_folder}{dashboard_name}.html")

  if (overwrite) {
    file_rename = stringr::str_glue("docs/{doc_name}.html")
  } else {
    file_rename = stringr::str_glue("docs/{doc_name}_{Sys.Date()}.html")
  }

  rmarkdown::render(dashboard_path_rmd)
  file.rename(dashboard_path_html,
              file_rename)

}

#end





