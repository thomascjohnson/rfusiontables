\name{ft.describetable}
\alias{ft.describetable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to run queries over a user's Google Fusion Tables Data Warehouse
}
\description{
Returns a list of lists of rows of the user's query
}
\usage{
ft.sqlquery(auth, sqlquery)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{
    A Token object from the httr package, created with ft.connect.
  }
  \item{sqlquery}{
    A valid SQL query string.
  }
}
\details{
A broad function that can read table data, insert data, update data, delete data, and so forth.
}
\value{
An authentication token that can be used to access the Fusion Tables V2 API. See the httr package for more information.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Thomas Johnson <thomascjohnson@gmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

## The function itself:
> ft.sqlquery
function(auth, sqlquery) {
  url <- "https://www.googleapis.com/fusiontables/v2/query"
  params <- list(sql = sqlquery)
  
  result <- POST(url, config(token=auth), query = params)
  
  contents <- content(result)
  
  return(contents)
}
