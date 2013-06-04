class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :position
  has_many :todos
  embed :ids, :include => true
end