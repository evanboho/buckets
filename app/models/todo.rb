class Todo < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  scope :completed, lambda { where(:complete => "completed") }

end
