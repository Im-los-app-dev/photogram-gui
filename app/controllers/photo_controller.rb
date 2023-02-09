class PhotoController < ApplicationController

  def index

    render(:template => "photo/index.html.erb")
  end

end
