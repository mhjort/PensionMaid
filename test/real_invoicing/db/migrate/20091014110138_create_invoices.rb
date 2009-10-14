class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string :name
      t.test :address
      t.string :month
      t.string :type
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
