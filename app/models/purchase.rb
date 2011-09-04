class Purchase < ActiveRecord::Base
  has_one :invoice
  belongs_to :supplier

  def display_supplier
    return supplier.name unless supplier.nil?
  end

end
