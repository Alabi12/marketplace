class SkillServicesController < ApplicationController
  before_action :set_skill_service, only: %i[ show edit update destroy ]

  # GET /skill_services or /skill_services.json
  def index
    @skill_services = SkillService.all
  end

  # GET /skill_services/1 or /skill_services/1.json
  def show
  end

  # GET /skill_services/new
  def new
    @skill_service = SkillService.new
  end

  # GET /skill_services/1/edit
  def edit
  end

  # POST /skill_services or /skill_services.json
  def create
    @skill_service = SkillService.new(skill_service_params)

    respond_to do |format|
      if @skill_service.save
        format.html { redirect_to @skill_service, notice: "Skill service was successfully created." }
        format.json { render :show, status: :created, location: @skill_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skill_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_services/1 or /skill_services/1.json
  def update
    respond_to do |format|
      if @skill_service.update(skill_service_params)
        format.html { redirect_to @skill_service, notice: "Skill service was successfully updated." }
        format.json { render :show, status: :ok, location: @skill_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_services/1 or /skill_services/1.json
  def destroy
    @skill_service.destroy!

    respond_to do |format|
      format.html { redirect_to skill_services_path, status: :see_other, notice: "Skill service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_service
      @skill_service = SkillService.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def skill_service_params
      params.expect(skill_service: [ :name, :description, :skilled_professional_profile_id ])
    end
end
