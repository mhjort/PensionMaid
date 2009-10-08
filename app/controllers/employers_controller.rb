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
        do_invoice
      end
      format.html { render :action => "index" }
    end
  end
  
  def do_invoice
    invoice = Invoice.new(:name => "Markus", :amount => 9500)
    ret = invoice.save
    puts invoice.id
  end
end
