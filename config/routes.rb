Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
end
<<<<<<< HEAD
get("/login",  { :controller => "sessions", :action => "new" })
get("/signup", { :controller => "users",    :action => "new" })
get("/logout", { :controller => "sessions", :action => "destroy" })
=======
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
