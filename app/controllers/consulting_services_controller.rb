class ConsultingServicesController < ApplicationController
  before_action :set_consulting_service, only: %i[ show edit update destroy ]

  # GET /consulting_services or /consulting_services.json
  def index
    @consulting_services = ConsultingService.all
  end

  # GET /consulting_services/1 or /consulting_services/1.json
  def show
  end

  # GET /consulting_services/new
  def new
    @consulting_service = ConsultingService.new
  end

  # GET /consulting_services/1/edit
  def edit
  end

  # POST /consulting_services or /consulting_services.json
  def create
    @consulting_service = ConsultingService.new(consulting_service_params)

    respond_to do |format|
      if @consulting_service.save
        format.html { redirect_to @consulting_service, notice: "Consulting service was successfully created." }
        format.json { render :show, status: :created, location: @consulting_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consulting_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulting_services/1 or /consulting_services/1.json
  def update
    respond_to do |format|
      if @consulting_service.update(consulting_service_params)
        format.html { redirect_to @consulting_service, notice: "Consulting service was successfully updated." }
        format.json { render :show, status: :ok, location: @consulting_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consulting_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulting_services/1 or /consulting_services/1.json
  def destroy
    @consulting_service.destroy!

    respond_to do |format|
      format.html { redirect_to consulting_services_path, status: :see_other, notice: "Consulting service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting_service
      @consulting_service = ConsultingService.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def consulting_service_params
      params.expect(consulting_service: [ :name, :description, :business_consulting_profile_id ])
    end
end
