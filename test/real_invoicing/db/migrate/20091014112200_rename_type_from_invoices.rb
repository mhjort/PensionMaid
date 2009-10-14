class RenameTypeFromInvoices < ActiveRecord::Migration
  def self.up
    rename_column :invoices, :type, :insurance_type
  end


  def self.down
    rename_column :invoices, :insurance_type, :type
  end
end
