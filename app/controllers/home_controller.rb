class HomeController < ApplicationController
  
  def index
    
    render(:template => "home_template/index.html.erb")
  end
  
end
