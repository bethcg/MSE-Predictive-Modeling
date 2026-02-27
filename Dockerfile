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
RUN R -e "install.packages(c('abind','ALEPlot','arrow','askpass','assertthat','astsa','backports','base64enc','BBmisc','bench','BiocManager','bit','bit64','bitops','blob','blogdown','bookdown','BradleyTerry2','brew','brglm','brio','broom','bslib','cachem','callr','car','carData','caret','caTools','cellranger','checkmate','classInt','cli','clipr','coin','colorspace','combinat','commonmark','config','corpcor','covr','cpp11','crayon','credentials','Cubist','curl','data.table','DBI','dbplyr','desc','devtools','DiagrammeR','diffobj','digest','distill','dlm','docopt','downlit','downloader','dplyr','dtplyr','duckdb','e1071','earth','ellipse','ellipsis','evaluate','fansi','farver','fastICA','fastmap','fastmatch','fontawesome','forcats','foreach','forecast','forecTheta','Formula','fracdiff','fs','fst','fstcore','future','future.apply','future.callr','gam','gargle','gbm','generics','gert','ggplot2','gh','gitcreds','glmnet','globals','glue','googledrive','googlesheets4','gower','gplots','gridExtra','gtable','gtools','h2o','hardhat','haven','here','highr','hms','htmltools','htmlwidgets','httpuv','httr','ids','igraph','iml','influenceR','ini','inum','ipred','IRdisplay','IRkernel','ISLR','isoband','ISwR','iterators','jquerylib','jsonlite','keras','kernlab','KFAS','klaR','knitr','labeling','labelled','Lahman','later','lava','lazyeval','leaps','lgr','libcoin','lifecycle','listenv','littler','lme4','lmtest','lubridate','magrittr','maptools','MASS','MatrixModels','matrixStats','mda','memoise','Metrics','mice','mime','miniUI','minqa','misc3d','mlbench','MLmetrics','mlr','mlr3','mlr3measures','mlr3misc','ModelMetrics','modelr','modeltools','multcomp','munsell','mvtnorm','nloptr','numDeriv','nycflights13','openssl','packrat','palmerpenguins','pamr','paradox','parallelly','parallelMap','ParamHelpers','party','partykit','patchwork','pbdZMQ','pbkrtest','pillar','pkgbuild','pkgconfig','pkgload','plogr','plot3D','plotmo','plotrix','pls','plyr','png','praise','prediction','prettyunits','pROC','processx','prodlim','profileModel','profmem','progress','progressr','promises','proxy','PRROC','ps','purrr','quadprog','quantmod','quantreg','questionr','qvcalc','R.cache','R.methodsS3','R.oo','R.utils','r2d3','R6','randomForest','ranger','RANN','rappdirs','rcmdcheck','RColorBrewer','Rcpp','RcppArmadillo','RcppEigen','RcppTOML','RCurl','readr','readxl','recipes','redland','rematch','rematch2','remotes','repr','reprex','reshape2','reticulate','rex','rJava','rlang','RMariaDB','rmarkdown','rmdshower','ROCR','ROSE','roxygen2','RPostgres','rprojroot','rsconnect','RSQLite','rstudioapi','rticles','rversions','rvest','sandwich','sass','scales','scatterplot3d','seasonal','selectr','servr','sessioninfo','shape','shiny','sourcetools','sp','SparseM','spls','SQUAREM','stringi','stringr','strucchange','styler','subselect','superpc','sys','TeachingDemos','tensorflow','testit','testthat','tfautograph','tfruns','TH.data','themis','tibble','tidyr','tidyselect','tidyverse','timeDate','tinytex','tree','tseries','TTR','tufte','tzdb','urca','uroot','usethis','utf8','uuid','vctrs','viridis','viridisLite','visNetwork','vroom','waldo','webshot','whisker','whoami','withr','x13binary','xaringan','xfun','XML','xml2','xopen','xtable','xts','yaImpute','yaml','zeallot','zip','zoo','base','boot','class','cluster','codetools','compiler','datasets','foreign','graphics','grDevices','grid','KernSmooth','lattice','MASS','Matrix','methods','mgcv','nlme','nnet','parallel','rpart','spatial','splines','stats','stats4','survival','tcltk','tools','utils'))"


