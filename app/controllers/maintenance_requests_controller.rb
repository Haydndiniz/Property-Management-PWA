class MaintenanceRequestsController < ApplicationController
  before_action :set_property
  before_action :set_maintenance_request, only: %i[ show edit update destroy ]

  # GET /maintenance_requests or /maintenance_requests.json
  def index
    @maintenance_requests = @property.maintenance_requests
  end

  # GET /maintenance_requests/1 or /maintenance_requests/1.json
  def show
  end

  # GET /maintenance_requests/new
  def new
    @maintenance_request = @property.maintenance_requests.build
  end

  # GET /maintenance_requests/1/edit
  def edit
  end

  # POST /maintenance_requests or /maintenance_requests.json
  def create
    @maintenance_request = @property.maintenance_requests.build(maintenance_request_params)

    respond_to do |format|
      if @maintenance_request.save
        format.html { redirect_to property_maintenance_requests_url(@property), notice: "Maintenance request was successfully created." }
        format.json { render :show, status: :created, location: @maintenance_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_requests/1 or /maintenance_requests/1.json
  def update
    respond_to do |format|
      if @maintenance_request.update(maintenance_request_params)
        format.html { redirect_to property_maintenance_requests_url(@property), notice: "Maintenance request was successfully updated." }
        format.json { render :show, status: :ok, location: @maintenance_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maintenance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_requests/1 or /maintenance_requests/1.json
  def destroy
    @maintenance_request.destroy

    respond_to do |format|
      format.html { redirect_to property_maintenance_requests_url(@property), notice: "Maintenance request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.where(['id = ?', params[:property_id]]).first
  end

  def set_maintenance_request
    @maintenance_request = MaintenanceRequest.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def maintenance_request_params
    params.fetch(:maintenance_request, {})
  end
end
