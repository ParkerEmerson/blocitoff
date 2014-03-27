class Todo < ActiveRecord::Base
  has_many :items
  attr_accessible :body, :title
end
