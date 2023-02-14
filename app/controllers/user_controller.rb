class UserController <ApplicationController

  def index

    @list_of_users = User.all

    render(:template => "user/index.html.erb")
  end

  def user_id

    the_id = params.fetch("user_id")
    #@user_id= self_id
    @list_of_users = User.all
    @user_detail = @list_of_users.where(:id => the_id).first

    if @user_detail == nil
      redirect_to("/404")
    end


    render(:template => "user/user_detail.html.erb")
  end 


  def byeee

    render(:template => "user/delete_user.html.erb")
  end


end
