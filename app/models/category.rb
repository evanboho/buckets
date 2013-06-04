class Category < ActiveRecord::Base
  has_many :todos, :dependent => :destroy

  validates_presence_of :name

end