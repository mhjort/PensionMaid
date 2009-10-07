class Invoice 
  attr_accessor :name, :amount 
  
  def initialize(name, amount)
    @name = name
    @amount = amount
  end
  
  def to_s
    @name + ", " + @amount
  end
end

class MockInvoicingController < ApplicationController
  protect_from_forgery :only => []
  def show
    puts "Called show for " + params[:id]

    respond_to do |format|
      format.xml  { render :xml => "<?xml version='1.0' encoding='UTF-8'?><response>ok</response>" }
    end
  end

  def create
    invoice_params =  params[:invoice]
    invoice = Invoice.new invoice_params[:name], invoice_params[:amount]
    puts invoice
    respond_to do |format|
      format.xml  { render :xml => "<?xml version ='1.0' encoding='UTF-8'?>" }
    end
  end
end
