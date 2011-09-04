class Supplier < ActiveRecord::Base
  has_many :purchases
end
