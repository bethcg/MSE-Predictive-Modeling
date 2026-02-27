FROM renku/renkulab-r:4.3.1-0.25.0

# Uncomment and adapt if code is to be included in the image
# COPY src /code/src

# Uncomment and adapt if your R or python packages require extra linux (ubuntu) software
# e.g. the following installs apt-utils and vim; each pkg on its own line, all lines
# except for the last end with backslash '\' to continue the RUN line
#
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libudunits2-dev \
    libproj-dev \
    libgdal-dev \
    libgeos-dev
RUN chown -R ${NB_USER} /home/${NB_USER}
USER ${NB_USER}

# Install R dependencies
RUN R -e "install.packages(c('arrow','askpass','assertthat','backports','base64enc','BiocManager','bit','bit64','blob','blogdown','bookdown','brew','brio','broom','bslib','cachem','callr','cellranger','cli','clipr','colorspace','commonmark','conflicted','covr','cpp11','crayon','credentials','curl','data.table','DBI','dbplyr','desc','devtools','DiagrammeR','diffobj','digest','distill','docopt','downlit','downloader','dplyr','dtplyr','duckdb','ellipsis','evaluate','fansi','farver','fastmap','fontawesome','forcats','fs','fst','fstcore','gargle','generics','gert','ggplot2','gh','gitcreds','glue','googledrive','googlesheets4','gridExtra','gtable','haven','highr','hms','htmltools','htmlwidgets','httpuv','httr','httr2','ids','igraph','ini','IRdisplay','IRkernel','isoband','jquerylib','jsonlite','knitr','labeling','Lahman','later','lazyeval','lifecycle','littler','lubridate','magrittr','memoise','mime','miniUI','modelr','munsell','nycflights13','openssl','packrat','pbdZMQ','pillar','pkgbuild','pkgconfig','pkgdown','pkgload','plogr','png','praise','prettyunits','processx','profvis','progress','promises','ps','purrr','r2d3','R6','ragg','rappdirs','rcmdcheck','RColorBrewer','Rcpp','readr','readxl','redland','rematch','rematch2','remotes','renv','repr','reprex','rex','rJava','rlang','RMariaDB','rmarkdown','roxygen2','RPostgres','rprojroot','rsconnect','RSQLite','rstudioapi','rticles','rversions','rvest','sass','scales','selectr','servr','sessioninfo','shiny','sourcetools','stringi','stringr','sys','systemfonts','testit','testthat','textshaping','tibble','tidyr','tidyselect','tidyverse','timechange','tinytex','tufte','tzdb','urlchecker','usethis','utf8','uuid','vctrs','viridis','viridisLite','visNetwork','vroom','waldo','webshot','whisker','whoami','withr','xaringan','xfun','xml2','xopen','xtable','yaml','zip','base','boot','class','cluster','codetools','compiler','datasets','foreign','graphics','grDevices','grid','KernSmooth','lattice','MASS','Matrix','methods','mgcv','nlme','nnet','parallel','rpart','spatial','splines','stats','stats4','survival','tcltk','tools','utils'))"
