class PhotoController < ApplicationController

  def index

    @list_of_photos = Photo.all


    render(:template => "photo/index.html.erb")
  end


  def photo_id
    the_id = params.fetch("photo_id")

    list_of_photos = Photo.all
    @a_photo = list_of_photos.where(:id => the_id).first

    render(:template => "photo/show.html.erb")
  end


  def delete_photo
    the_id = params.fetch("photo_id")
    list_of_photos = Photo.all
    d_photo = list_of_photos.where(:id => the_id).first

    d_photo.destroy

    #render(:template=> "photo/delete_photo.html.erb")

    redirect_to("/photos")

  end


  def update_photo
    the_id = params.fetch("photo_id")
    list_of_photos = Photo.all
    d_photo = list_of_photos.where(:id => the_id).first



    render(:template=> "photo/update_photo.html.erb")
  end

  def insert_photo
    #the_id = params.fetch("photo_id")
    the_url = params.fetch("photourl")
    the_desc = params.fetch("photodesc")
    the_ownerid = params.fetch("photooid")

    a = Photo.new
    a.caption = the_desc
    a.owner_id = the_ownerid
    a.image = the_url

    a.save


    list_of_photos = Photo.all
    #d_photo = list_of_photos.where(:id => the).first




    #render(:template=> "photo/insert_photo.html.erb")
    redirect_to("/photos")
  end


end
