class AddSalaryToEmployees < ActiveRecord::Migration
  def self.up
    add_column :employees, :salary, :decimal
  end

  def self.down
    remove_column :employees, :salary
  end
end
