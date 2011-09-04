class Purchase < ActiveRecord::Base
  has_one :invoice
end
