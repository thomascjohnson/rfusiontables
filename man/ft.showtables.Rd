\name{ft.describetable}
\alias{ft.describetable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to describe a Google Fusion Table based on the Fusion Table ID
}
\description{
Returns a data frame of a user's table names and ids
}
\usage{
ft.describetable(auth, table_id)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{auth}{
    A Token object from the httr package, created with ft.connect.
  }
  \item{table_id}{
    Fusion Table ID.
  }
}
\details{
A quick utility function to give users a list of their tables.
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
> ft.showtables
function(auth) {
  url <- "https://www.googleapis.com/fusiontables/v2/query"
  params <- list(sql = "SHOW TABLES")
  
  result <- POST(url, config(token=auth), query = params)
  
  contents <- content(result)
  ids_names <- unlist(contents$rows)
  tables <- data.frame(names = ids_names[seq(2, length(ids_names), 2)],
                       ids = ids_names[seq(1, length(ids_names), 2)])
  
  return(tables)
}
