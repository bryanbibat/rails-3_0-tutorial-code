class AddSupplierToPurchase < ActiveRecord::Migration
  def self.up
    add_column :purchases, :supplier_id, :integer
  end

  def self.down
    remove_column :purchases, :supplier_id
  end
end
