class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.text :description
      t.date :delivered_at

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
