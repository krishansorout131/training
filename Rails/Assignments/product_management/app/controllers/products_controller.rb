class ProductsController < ApplicationController
  before_action :user_login



  def index
    if (params[:name] == nil and params[:price] == nil) or (params[:price] == "0" and params[:name] == "")
      @products = Product.where(user_id: session[:user_id]).paginate(:page => params[:page])
    elsif params[:name] != "" and params[:price] == "0"
      @products = Product.where(user_id: session[:user_id]).where("name ilike ?", "#{params[:name]}%").paginate(:page => params[:page])
    elsif params[:price] != "0" and params[:name] == ""
      @products = Product.where(user_id: session[:user_id]).where("price < ? ", "#{params[:price]}").paginate(:page => params[:page])
    else
      @products = Product.where(user_id: session[:user_id]).where("price < ? and name ilike ?", "#{params[:price]}", "#{params[:name]}%").paginate(:page => params[:page])
    end
    
    @count = @products.count
    if @count == 0
      flash[:message] = "No Products Found Create new Product First"
    end  
  end
  
  def new
    @product = Product.new
  end  

  def create
    @user = User.find(session[:user_id])
    @product = @user.products.create(product_params)
    
    if @product.save
      flash[:message] = "Product Created Successfully "
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end   
  end

  def edit
    @product = Product.find(params[:id])
  end 

  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      flash[:message]= "Product Updated Successfully !"
      redirect_to "/products"
    else
      render "edit" , status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end   
  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def user_login
    if session[:user_id] == nil
      flash[:message]= "Login first"
      redirect_to "/"
    end
  end

end
