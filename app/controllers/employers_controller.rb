class EmployersController < ApplicationController
  # GET /employers
  # GET /employers.xml
  def index
    @employer = Employer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employer }
    end
  end

  # GET /employers/1
  # GET /employers/1.xml
  def show
    @employer = Employer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employer }
    end
  end

  # POST /employers
  # POST /employers.xml
  def create
    @employer = Employer.new(params[:employer])

    respond_to do |format|
      if @employer.save
        flash[:notice] = 'Employer was successfully created.'
        format.html { redirect_to(@employer) }
        format.xml  { render :xml => @employer, :status => :created, :location => @employer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employer.errors, :status => :unprocessable_entity }
      end
    end
  end
end
