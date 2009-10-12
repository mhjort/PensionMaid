class Invoice
  attr_accessor :id, :name, :amount

  def initialize(id, name, amount)
    @id = id
    @name = name
    @amount = amount
  end

  def to_s
    @id + ", " + @name + ", " + @amount.to_s
  end
end

$last_created_invoice_id = -1

class InvoicesController < ApplicationController
  protect_from_forgery :only => []

  def show
    respond_to do |format|
      format.xml  { render :xml => 
	  "<?xml version='1.0' encoding='UTF-8'?><response>#{$last_created_invoice_id == params[:id] ? "ok" : "invalid"}</response>" 
	}
    end
  end

  def create
    invoice_params =  params[:invoice]
    invoice_id = Time.now.strftime("%y%m%d%H%M%S")
    $last_created_invoice_id = invoice_id
    respond_to do |format|
      format.xml  { render :xml => "<?xml version ='1.0' encoding='UTF-8'?><invoice><id>#{invoice_id}</id></invoice>" }
    end
  end
end                    
