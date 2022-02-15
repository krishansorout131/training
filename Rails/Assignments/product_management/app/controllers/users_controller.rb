class UsersController < ApplicationController
   

  def new
    @user = User.new
  end  

  def create
    @user = User.create(user_params)
    
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity 
    end 
  end


  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user != nil
      session[:user_id] = @user.id  
      redirect_to "/products"
    elsif params[:name] != nil
      flash[:message] = "Username and password not matched"
      render "login"
    end
  end  

  def logout
    session[:user_id] = nil
    redirect_to "/" 
  end  

  private

  def user_params
    params.require(:user).permit(:name, :email, :dob, :password, :address, :terms_of_services, :password_confirmation)
  end

end
