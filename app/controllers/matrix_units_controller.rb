class MatrixUnitsController < ApplicationController
  # GET /matrix_units
  # GET /matrix_units.json
  def index
    @matrix_units = MatrixUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matrix_units }
    end
  end

  # GET /matrix_units/1
  # GET /matrix_units/1.json
  def show
    @matrix_unit = MatrixUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matrix_unit }
    end
  end

  # GET /matrix_units/new
  # GET /matrix_units/new.json
  def new
    @matrix_unit = MatrixUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matrix_unit }
    end
  end

  # GET /matrix_units/1/edit
  def edit
    @matrix_unit = MatrixUnit.find(params[:id])
    @cost_centers = CostCenter.all
  end

  # POST /matrix_units
  # POST /matrix_units.json
  def create
    @matrix_unit = MatrixUnit.new(params[:matrix_unit])

    respond_to do |format|
      if @matrix_unit.save
        format.html { redirect_to @matrix_unit, notice: 'Matrix unit was successfully created.' }
        format.json { render json: @matrix_unit, status: :created, location: @matrix_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @matrix_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matrix_units/1
  # PUT /matrix_units/1.json
  def update
    @matrix_unit = MatrixUnit.find(params[:id])
    @cost_centers = CostCenter.all

    respond_to do |format|
      if @matrix_unit.update_attributes(params[:matrix_unit])
        format.html { redirect_to @matrix_unit, notice: 'Matrix unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @matrix_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_units/1
  # DELETE /matrix_units/1.json
  def destroy
    @matrix_unit = MatrixUnit.find(params[:id])
    @matrix_unit.destroy

    respond_to do |format|
      format.html { redirect_to matrix_units_url }
      format.json { head :no_content }
    end
  end
end
