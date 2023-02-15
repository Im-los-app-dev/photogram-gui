Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "index" })

  get("/users", { :controller => "user", :action => "index" })
  get("/users/:user_name", { :controller => "user", :action => "user_id" })
  
  get("/delete_users/:toast_userid", { :controller => "user", :action => "byeee" })
 
  get("/add_user", { :controller => "user", :action => "add_user" })
  
  get("/update_user/:original_username", { :controller => "user", :action => "update_user" })





  get("/update_photos/:up_id", { :controller => "photo", :action => "update_photo" })
  get("/photos", { :controller => "photo", :action => "index" })
  get("/photos/:photo_id", { :controller => "photo", :action => "photo_id" })
  get("/delete_photo/:photo_id", { :controller => "photo", :action => "delete_photo" })
  get("/insert_photos/", { :controller => "photo", :action => "insert_photo" })

  get("/insert_comment/", { :controller => "photo", :action => "insert_comment" })

end
