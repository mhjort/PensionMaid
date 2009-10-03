class EmployersController < ApplicationController
  # GET /employers
  # GET /employers.xml
  def index
    @employer = Employer.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /employers
  # POST /employers.xml
  def create
    @employer = Employer.new(params[:employer])

    respond_to do |format|
      if @employer.save
        flash[:notice] = 'Employer was successfully created.'
        format.html { render :action => "index" }
      else
        format.html { render :action => "index" }
      end
    end
  end
end
