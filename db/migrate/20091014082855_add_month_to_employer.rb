class AddMonthToEmployer < ActiveRecord::Migration
  def self.up
    add_column :employers, :month, :string
  end

  def self.down
    remove_column :employers, :month
  end
end
