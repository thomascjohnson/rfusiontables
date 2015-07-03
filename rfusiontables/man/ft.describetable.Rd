\name{ft.describetable}
\alias{ft.describetable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to describe a Google Fusion Table based on the Fusion Table ID
}
\description{
Returns a data frame of the column numbers, field names and field types
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
A quick utility function to give users an idea about their tables.
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
> ft.describetable
function(auth, table_id) {
  url <- "https://www.googleapis.com/fusiontables/v2/query"
  params <- list(sql = paste("DESCRIBE", table))
  result <- POST(url, config(token=auth), query = params)
  contents <- content(result)
  table_data <- unlist(contents$rows)
  tlength <- length(table_data)
  fields <- data.frame(column = table_data[seq(1, tlength, 3)],
                       field = table_data[seq(2, tlength, 3)],
                       type = table_data[seq(3, tlength, 3)])
  return(fields)
}

}
