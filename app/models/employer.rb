class Employer < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :ssn, :address, :postal_code, :city
end
