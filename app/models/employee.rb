class Employee < ActiveRecord::Base
  validates_presence_of :ssn
  belongs_to :employer
end
