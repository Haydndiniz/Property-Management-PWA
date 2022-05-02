class UnitsController < ApplicationController
  before_action :set_property
  before_action :set_unit, only: %i[show edit update destroy]
  authorize_resource
  # GET /units or /units.json
  def index
    @units = @property.units
  end

  # GET /units/1 or /units/1.json
  def show
  end

  # GET /units/new
  def new
    @unit = @property.units.build
  end

  # GET /units/1/edit
  def edit
  end

  # POST /units or /units.json
  def create
    @unit = @property.units.build(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to property_units_path(@property), notice: 'Unit was successfully created.' }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /units/1 or /units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to property_unit_path(@property), notice: 'Unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1 or /units/1.json
  def destroy
    @unit.destroy

    respond_to do |format|
      format.html { redirect_to property_units_path(@property), notice: 'Unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.where(['id = ?', params[:property_id]]).first
  end

  def set_unit
    @unit = @property.units.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def unit_params
    params.fetch(:unit, {})
  end
end
