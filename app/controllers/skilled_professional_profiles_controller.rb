class SkilledProfessionalProfilesController < ApplicationController
  before_action :set_skilled_professional_profile, only: %i[ show edit update destroy ]

  # GET /skilled_professional_profiles or /skilled_professional_profiles.json
  def index
    @skilled_professional_profiles = SkilledProfessionalProfile.all
  end

  # GET /skilled_professional_profiles/1 or /skilled_professional_profiles/1.json
  def show
  end

  # GET /skilled_professional_profiles/new
  def new
    @skilled_professional_profile = SkilledProfessionalProfile.new
  end

  # GET /skilled_professional_profiles/1/edit
  def edit
  end

  # POST /skilled_professional_profiles or /skilled_professional_profiles.json
  def create
    @skilled_professional_profile = SkilledProfessionalProfile.new(skilled_professional_profile_params)

    respond_to do |format|
      if @skilled_professional_profile.save
        format.html { redirect_to @skilled_professional_profile, notice: "Skilled professional profile was successfully created." }
        format.json { render :show, status: :created, location: @skilled_professional_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skilled_professional_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skilled_professional_profiles/1 or /skilled_professional_profiles/1.json
  def update
    respond_to do |format|
      if @skilled_professional_profile.update(skilled_professional_profile_params)
        format.html { redirect_to @skilled_professional_profile, notice: "Skilled professional profile was successfully updated." }
        format.json { render :show, status: :ok, location: @skilled_professional_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skilled_professional_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skilled_professional_profiles/1 or /skilled_professional_profiles/1.json
  def destroy
    @skilled_professional_profile.destroy!

    respond_to do |format|
      format.html { redirect_to skilled_professional_profiles_path, status: :see_other, notice: "Skilled professional profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skilled_professional_profile
      @skilled_professional_profile = SkilledProfessionalProfile.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def skilled_professional_profile_params
      params.expect(skilled_professional_profile: [ :user_id, :skill_type, :experience, :portfolio_url ])
    end
end
