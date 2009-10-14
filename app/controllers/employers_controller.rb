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
        invoice = do_invoice @employer
        flash[:notice] = 'Order with id ' + invoice.id + ' was successfully created.'
      end
      format.html { render :action => "index" }
    end
  end
  
  def do_invoice(e)
    invoice = Invoice.new(:name => e.first_name + " " + e.last_name, 
			  :address => e.address + ", " + e.postal_code + " " + e.city, 
			  :month => e.month,
			  :type => "Tilapäinen työnantaja",
			  :amount => e.employees[0].salary * 0.224);
    ret = invoice.save
    invoice
  end
end
