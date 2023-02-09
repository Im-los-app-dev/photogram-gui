Rails.application.routes.draw do

  get("/", { :controller => "home", :action => "index" })

  get("/users", { :controller => "user", :action => "index" })

  get("/photos", { :controller => "photo", :action => "index" })


end
