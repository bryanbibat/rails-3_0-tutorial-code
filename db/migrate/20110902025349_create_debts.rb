class CreateDebts < ActiveRecord::Migration
  def self.up
    create_table :debts do |t|
      t.string :name
      t.text :item
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :debts
  end
end
