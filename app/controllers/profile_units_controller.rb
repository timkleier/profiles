class ProfileUnitsController < ApplicationController
  # GET /profile_units
  # GET /profile_units.json
  def index
    @profile_units = ProfileUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile_units }
    end
  end

  # GET /profile_units/1
  # GET /profile_units/1.json
  def show
    @profile_unit = ProfileUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile_unit }
    end
  end

  # GET /profile_units/new
  # GET /profile_units/new.json
  def new
    @profile_unit = ProfileUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile_unit }
    end
  end

  # GET /profile_units/1/edit
  def edit
    @profile_unit = ProfileUnit.find(params[:id])
  end

  # POST /profile_units
  # POST /profile_units.json
  def create
    @profile_unit = ProfileUnit.new(params[:profile_unit])

    respond_to do |format|
      if @profile_unit.save
        format.html { redirect_to @profile_unit, notice: 'Profile unit was successfully created.' }
        format.json { render json: @profile_unit, status: :created, location: @profile_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @profile_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profile_units/1
  # PUT /profile_units/1.json
  def update
    @profile_unit = ProfileUnit.find(params[:id])

    respond_to do |format|
      if @profile_unit.update_attributes(params[:profile_unit])
        format.html { redirect_to @profile_unit, notice: 'Profile unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_units/1
  # DELETE /profile_units/1.json
  def destroy
    @profile_unit = ProfileUnit.find(params[:id])
    @profile_unit.destroy

    respond_to do |format|
      format.html { redirect_to profile_units_url }
      format.json { head :no_content }
    end
  end
end
