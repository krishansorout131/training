class Api::V1::ProductsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    if params[:category_id].present?
      category = Category.find_by(id: params[:category_id])
      if category.present?
        products = category.products
      else
        render json: { data: "Category Not Found"} and return
      end 
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
  
  def create
    category = Category.find_by(id: params[:category_id])
    product = category.products.create(product_params)
    render json: { data: product}

  end
  
  
  private 

  def product_params
    params.require(:product).permit(:name, :price)
  end  
end    