Rails.application.routes.draw do

  get("/", { :controller => "home", :action => "index" })

  get("/users", { :controller => "user", :action => "index" })
  get("/users/:user_id", { :controller => "user", :action => "user_id" })

  get("/photos", { :controller => "photo", :action => "index" })


end
