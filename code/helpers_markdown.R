#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# This is a utility script that holds custom functions
#
# By: mike gaunt, michael.gaunt@wsp.com
#
# README: scripts are for knitting purposes
#-------- functions for knitting flex dashboards or markdowns
# *please use 80 character margins
# *please save as helpers_[[informative description]]
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#SECTION NAME===================================================================
#use this header to make demarcations/section in code [delete this line]
#short description

#description
#description
#description
function_name <- function(input_1, input_2) {
}

#Flex===========================================================================
#use this header to make demarcations/section in code [delete this line]
#short description
knit_dashboard =  function(dashboard_name = "dashboard", dashboard_folder,
                           doc_name = dashboard_name, overwrite = F){
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

knit_dashboard(dashboard_folder = "dashboard/trip_summary/", doc_name = "dashboard_trip_summary", overwrite = T)

#Markdown=======================================================================
#use this header to make demarcations/section in code [delete this line]
#short description
knit_markdown =  function(markdown_name, markdown_folder = "analysis/",
                           doc_name = markdown_name, overwrite = F){
  markdown_path_rmd = stringr::str_glue("{markdown_folder}{markdown_name}.Rmd")
  markdown_path_html = stringr::str_glue("{markdown_folder}{markdown_name}.html")

  if (overwrite) {
    file_rename = stringr::str_glue("docs/{doc_name}.html")
  } else {
    file_rename = stringr::str_glue("docs/{doc_name}_{Sys.Date()}.html")
  }

  rmarkdown::render(markdown_path_rmd)
  file.rename(markdown_path_html,
              file_rename)

}

knit_markdown(markdown_name = "trip_summary_monthly_report",
              doc_name = "TSMR_June_2020-07-06",
              overwrite = T)

#script end=====================================================================
