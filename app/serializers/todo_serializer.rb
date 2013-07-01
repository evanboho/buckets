class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :complete

end