class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :ancestry, :parent_id
end
