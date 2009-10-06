require 'test_helper'

class EmployerTest < ActiveSupport::TestCase
  def setup
    @employer = Employer.new
    @employer.first_name = 'Ron'
    @employer.last_name = 'Jeremy'
    @employer.address = 'Mannerheimintie 2'
    @employer.ssn = '111111-111C'
    @employer.postal_code = '00910'
    @employer.city = 'Helsinki'
  end

  def accepts_saving_of_valid_employer
    assert @employer.save
  end

  def test_does_not_accept_saving_of_employer_without_required_fiels
    @employer.first_name = ''
    assert !@employer.save
  end
end
