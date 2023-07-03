class ServiceProvisionsController < ApplicationController
  before_action :set_service_provision, only: %i[ show edit update destroy ]

  # GET /service_provisions or /service_provisions.json
  def index
    @service_provisions = ServiceProvision.all
  end

  # GET /service_provisions/1 or /service_provisions/1.json
  def show
  end

  # GET /service_provisions/new
  def new
    @service_provision = ServiceProvision.new
  end

  # GET /service_provisions/1/edit
  def edit
  end

  # POST /service_provisions or /service_provisions.json
  def create
    @service_provision = ServiceProvision.new(service_provision_params)

    respond_to do |format|
      if @service_provision.save
        format.html { redirect_to service_provision_url(@service_provision), notice: "Service provision was successfully created." }
        format.json { render :show, status: :created, location: @service_provision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_provision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_provisions/1 or /service_provisions/1.json
  def update
    respond_to do |format|
      if @service_provision.update(service_provision_params)
        format.html { redirect_to service_provision_url(@service_provision), notice: "Service provision was successfully updated." }
        format.json { render :show, status: :ok, location: @service_provision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_provision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_provisions/1 or /service_provisions/1.json
  def destroy
    @service_provision.destroy

    respond_to do |format|
      format.html { redirect_to service_provisions_url, notice: "Service provision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_provision
      @service_provision = ServiceProvision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_provision_params
      params.require(:service_provision).permit(:name, :description, :status, :quota, :comment, :service_provision_id)
    end
end
