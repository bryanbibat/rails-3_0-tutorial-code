class Product < ActiveRecord::Base
  validates_presence_of :name, :description
end
