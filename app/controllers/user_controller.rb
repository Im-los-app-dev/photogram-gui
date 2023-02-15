class UserController <ApplicationController

  def index

    @list_of_users = User.all

    render(:template => "user/index.html.erb")
  end

  def user_id

    the_id = params.fetch("user_name")
    #@user_id= self_id
    @list_of_users = User.all
    @user_detail = @list_of_users.where(:username => the_id).first

    if @user_detail == nil
      redirect_to("/404")
    end


    render(:template => "user/user_detail.html.erb")
  end 


  def byeee



    render(:template => "user/delete_user.html.erb")
  end


  def add_user
    new_user = params.fetch("new_username")
    
    a= User.new

    a.username = new_user
    a.save

    redirect_to("/users/"+ a.username.to_s)
  end


  def update_user
    user_name = params.fetch("input_username")
    og = params.fetch("original_username")
    list_of_users = User.all
    a_user = list_of_users.where(:username => og).first

    a_user.username = user_name
    a_user.save


    redirect_to("/users/"+ a_user.username.to_s)
  end
  
end
