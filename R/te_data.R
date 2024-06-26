#' TrialEmulation Data Class
#' @slot data A `data.table` object with columns "id", "period",
#'   "treatment", "outcome", "eligible"
setClass("te_data",
  slots = c(
    data = "data.table",
    nobs = "numeric",
    n = "numeric"
  )
)

setValidity(
  "te_data",
  function(object) {
    checks <- list()
    checks["cols_check"] <- check_names(
      colnames(object@data),
      must.include = c("id", "period", "treatment", "outcome", "eligible")
    )

    msg <- unlist(lapply(checks, function(x) if (is.character(x)) x else NULL))
    if (length(msg)) msg else TRUE
  }
)

# For empty slot
setClass(
  "te_data_unset",
  contains = "te_data",
  prototype = list(
    data = data.frame(),
    nobs = 0,
    n = 0
  )
)

# Show
setMethod(
  "show",
  c(object = "te_data"),
  function(object) {
    catn("Data")
    catn("N:", object@nobs, "observations from", object@n, "patients")
    print(object@data, nrows = 4, topn = 2)
  }
)
