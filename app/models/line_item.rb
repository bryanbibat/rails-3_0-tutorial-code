class LineItem < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :product
end
