Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "index" })

  get("/users", { :controller => "user", :action => "index" })
  get("/users/:user_id", { :controller => "user", :action => "user_id" })
  get("/delete_users/:toast_userid", { :controller => "user", :action => "byeee" })


  get("/photos", { :controller => "photo", :action => "index" })
  get("/photos/:photo_id", { :controller => "photo", :action => "photo_id" })
  get("/delete_photos/:photo_id", { :controller => "photo", :action => "delete_photo" })
  get("/insert_photos/", { :controller => "photo", :action => "insert_photo" })
end
