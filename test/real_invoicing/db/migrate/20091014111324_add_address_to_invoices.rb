class AddAddressToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :address, :string
  end

  def self.down
    remove_column :invoices, :address
  end
end
