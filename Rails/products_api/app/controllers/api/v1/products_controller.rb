class Api::V1::ProductsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    category = Category.find_by(id: params[:category_id])
    if category.present?
      products = category.products
    else
      products = Product.all  
    end    
      render json: { data: products}
  end 
    
  def show
    if params[:category_id].present?
      category = Category.find_by(id: params[:category_id])
      if category.present?
        product = category.products.find_by(id: params[:id])
        if product.present?
          render json: { data: product}
        else  
          render json: {data: "Product Not Found"}  and return
        end 
      else
        render json: { data: "category Not Found"} and return
      end     
    else  
      product = Product.find_by(id: params[:id])
      render json: { data: product}
    end
  end  
end    