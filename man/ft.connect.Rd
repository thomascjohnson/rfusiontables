\name{ft.connect}
\alias{ft.connect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to generate OAuth2 token for Google Fusion Tables access
}
\description{
Creates OAuth2 Token with app credentials and API scopes
}
\usage{
ft.connect(username, password)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{client_id}{
    Provide a valid Google AppEngine client id.
  }
  \item{client_secret}{
    Provide a valid Google AppEngine client secret corresponding the the provided id.
  }
  \item{api_scopes}{
    The API scopes for Fusion Tables V2, defaulting to the urls at time of package creation.
  }
}
\details{
Users can register a free AppEngine app and create a client id/client secret for use with this package.
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
> ft.connect
function(client_id,
         client_secret,
         api_scopes = c("https://www.googleapis.com/auth/fusiontables",
                        "https://www.googleapis.com/auth/fusiontables.readonly")) {
  require(httr)
  require(rjson)
  app <- oauth_app("google", client_id, client_secret)
  auth_key <- oauth2.0_token(oauth_endpoints("google"), app, api_scopes)
  return(auth_key)
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
