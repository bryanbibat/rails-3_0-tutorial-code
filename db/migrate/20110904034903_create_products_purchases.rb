class CreateProductsPurchases < ActiveRecord::Migration
  def self.up
    create_table :products_purchases, :id => false do |t|
      t.integer :product_id
      t.integer :purchase_id
    end
  end

  def self.down
    drop_table :products_purchases
  end
end
