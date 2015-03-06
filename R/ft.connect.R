ft.connect <- function(client_id,
                       client_secret,
                       scopes = c("https://www.googleapis.com/auth/fusiontables",
                                  "https://www.googleapis.com/auth/fusiontables.readonly")) {
  require(httr)                                  
  app <- oauth_app("google", client_id, client_secret)
  auth_key <- oauth2.0_token(oauth_endpoints("google"), app, scopes)
  return(auth_key)
}
