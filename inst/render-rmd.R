# render rmd
Sys.setlocale("LC_ALL", "pt_BR")

rmarkdown::render("docs/index.Rmd")

pagedown::chrome_print("docs/index.html")

xaringan::summon_remark(to = "inst/rmarkdown/templates/apresenta-o-r-ladies/skeleton/libs/")

fs::file_copy(path = "docs/custom.css",
              new_path = "inst/rmarkdown/templates/apresenta-o-r-ladies/skeleton/custom.css",
              overwrite = TRUE)

fs::file_copy(path = "docs/index.Rmd",
              new_path = "inst/rmarkdown/templates/apresenta-o-r-ladies/skeleton/skeleton.Rmd",
              overwrite = TRUE)
