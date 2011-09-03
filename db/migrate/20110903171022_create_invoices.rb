class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.references :purchase
      t.string :reference_number

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
