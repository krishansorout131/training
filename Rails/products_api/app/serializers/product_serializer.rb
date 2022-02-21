class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category

  def category
    object.category.name
  end

end
