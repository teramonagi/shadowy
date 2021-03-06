#' @include http.R
NULL

#' Check HTTP Method
#' @param method
#'    accepting methods.
#' @return
#'    the given HTTP context itself when the current request HTTP method is one of the given methods;
#'    otherwise \code{none}.
#' @rdname HTTP_METHOD
#' @format http.source
#' @export
HTTP_METHOD <- function(method) {
   as.http.source(function(context) {
      stopifnot(is.http.context(context))
      if (context$request$REQUEST_METHOD %in% method) {
         some(context)
      } else {
         none
      }
   })
}

############################################################
## HTTP methods
## http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html
############################################################

#' @rdname HTTP_METHOD
#' @export
OPTIONS <- HTTP_METHOD("OPTIONS")
#' The GET method.
#' @rdname HTTP_METHOD
#' @export
GET <- HTTP_METHOD("GET")
#' @rdname HTTP_METHOD
#' @export
HEAD <- HTTP_METHOD("HEAD")
#' @rdname HTTP_METHOD
#' @export
POST <- HTTP_METHOD("POST")
#' @rdname HTTP_METHOD
#' @export
PUT <- HTTP_METHOD("PUT")
#' @rdname HTTP_METHOD
#' @export
DELETE <- HTTP_METHOD("DELETE")
#' @rdname HTTP_METHOD
#' @export
TRACE <- HTTP_METHOD("TRACE")
#' @rdname HTTP_METHOD
#' @export
CONNECT <- HTTP_METHOD("CONNECT")
