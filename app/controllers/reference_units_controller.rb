class ReferenceUnitsController < ApplicationController

  def new
    @reference_unit = ReferenceUnit.new
  end

  def create
  @reference_unit = ReferenceUnit.new(params[:reference_unit])

  respond_to do |format|
    if @reference_unit.save
      format.html { redirect_to(@reference_unit, :notice => 'Reference unit was successfully created.') }
      format.xml  { render :xml => @reference_unit, :status => :created, :location => @reference_unit }
      format.json  { render json: @reference_unit, status: :created, location: @reference_unit }
   else
      format.html { render :action => "new" }
      format.xml  { render :xml => @reference_unit.errors, :status => :unprocessable_entity }
      format.json { render json: @reference_unit.errors, status: :unprocessable_entity }
    end
  end
  end



end
