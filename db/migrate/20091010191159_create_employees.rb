class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.Fixnum :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
