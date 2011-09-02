class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.integer :stock

      t.timestamps
    end

    Product.create :name => "test product 1", :description => "test description 1",
                   :cost => 1.11, :stock => 10
    Product.create :name => "test product 2", :description => "<b>test description 2</b>",
                   :cost => 2.22, :stock => 20

  end

  def self.down
    drop_table :products
  end
end
