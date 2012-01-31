class ReferenceCommoditiesController < ApplicationController
  def new
    @reference_commodity = ReferenceCommodity.new
  end
  
  def index
    @reference_commodities = ReferenceCommodity.find(:all)
  end
  
  def create
  @reference_commodity = ReferenceCommodity.new(params[:reference_commodity])

  respond_to do |format|
    if @reference_commodity.save
      format.html { redirect_to(@reference_commodity, :notice => 'Reference commodity was successfully created.') }
      format.xml  { render :xml => @reference_commodity, :status => :created, :location => @reference_commodity }
      format.json  { render json: @reference_commodity, status: :created, location: @reference_commodity }
   else
      format.html { render :action => "new" }
      format.xml  { render :xml => @reference_commodity.errors, :status => :unprocessable_entity }
      format.json { render json: @reference_commodity.errors, status: :unprocessable_entity }
    end
  end
  end

  def show
	 @reference_commodities = ReferenceCommodity.find(params[:id])
  end


end
