class Invoice < ActiveResource::Base
  # TODO Update to production url
  self.site = "http://localhost:3001"
end

class EmployersController < ApplicationController
  def index
    @employer = Employer.new
    respond_to do |format|
      format.html
      format.xml { render:xml => @employer.to_xml }
    end
  end

  def create
    @employer = Employer.new(params[:employer])
    respond_to do |format|
      if @employer.save
        flash[:notice] = 'Employer was successfully created.'
        do_invoice @employer
      end
      format.html { render :action => "index" }
    end
  end
  
  def do_invoice(e)
    invoice = Invoice.new(:name => e.first_name + " " + e.last_name, 
			  :address => e.address + ", " + e.postal_code + " " + e.city, 
			  :month => "Elokuu2009",
			  :type => "Tilapäinen työnantaja",
			  :amount => e.employees[0].salary * 0.224);
    ret = invoice.save
  end
end
