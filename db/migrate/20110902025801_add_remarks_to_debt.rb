class AddRemarksToDebt < ActiveRecord::Migration
  def self.up
    add_column :debts, :remarks, :text
  end

  def self.down
    remove_column :debts, :remarks
  end
end
