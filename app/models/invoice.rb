class Invoice < ActiveRecord::Base
  belongs_to :purchase
end
