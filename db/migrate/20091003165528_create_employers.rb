class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table :employers do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.string :address
      t.string :postal_code
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :employers
  end
end
