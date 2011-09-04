class Purchase < ActiveRecord::Base
  has_one :invoice
  belongs_to :supplier
  has_and_belongs_to_many :products

  def display_supplier
    return supplier.name unless supplier.nil?
  end

end
