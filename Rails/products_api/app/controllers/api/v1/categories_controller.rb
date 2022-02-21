class Api::V1::CategoriesController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    categories = Category.all
    render json: { data: ActiveModelSerializers::SerializableResource.new(categories, each_serializer: CategorySerializer)}
  end 
    
  def show
    category = Category.find(params[:id])
    render json: { data: category}
  end  

  def create
    cat = Category.create cat_params
    render json: { data: cat }
  end 

  def update
    category = Category.find(params[:id])
    category.update(cat_params)

    render json: {data: "name updated succesfully"}
  end  
  

  def destroy
    cat = Category.find_by(id: params[:id])
    cat.destroy
    render json: { data: 'YEss' }
  end



  
  private

  def cat_params
    #params.require(:category).permit(:name) #if we send data from body as json then use this
    params.permit(:name) #if we send data as key and value in params / through url
  end


end    