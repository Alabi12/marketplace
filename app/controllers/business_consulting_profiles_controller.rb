class BusinessConsultingProfilesController < ApplicationController
  before_action :set_business_consulting_profile, only: %i[ show edit update destroy ]

  # GET /business_consulting_profiles or /business_consulting_profiles.json
  def index
    @business_consulting_profiles = BusinessConsultingProfile.all
  end

  # GET /business_consulting_profiles/1 or /business_consulting_profiles/1.json
  def show
  end

  # GET /business_consulting_profiles/new
  def new
    @business_consulting_profile = BusinessConsultingProfile.new
  end

  # GET /business_consulting_profiles/1/edit
  def edit
  end

  # POST /business_consulting_profiles or /business_consulting_profiles.json
  def create
    @business_consulting_profile = BusinessConsultingProfile.new(business_consulting_profile_params)

    respond_to do |format|
      if @business_consulting_profile.save
        format.html { redirect_to @business_consulting_profile, notice: "Business consulting profile was successfully created." }
        format.json { render :show, status: :created, location: @business_consulting_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @business_consulting_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_consulting_profiles/1 or /business_consulting_profiles/1.json
  def update
    respond_to do |format|
      if @business_consulting_profile.update(business_consulting_profile_params)
        format.html { redirect_to @business_consulting_profile, notice: "Business consulting profile was successfully updated." }
        format.json { render :show, status: :ok, location: @business_consulting_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @business_consulting_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_consulting_profiles/1 or /business_consulting_profiles/1.json
  def destroy
    @business_consulting_profile.destroy!

    respond_to do |format|
      format.html { redirect_to business_consulting_profiles_path, status: :see_other, notice: "Business consulting profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_consulting_profile
      @business_consulting_profile = BusinessConsultingProfile.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def business_consulting_profile_params
      params.expect(business_consulting_profile: [ :user_id, :expertise, :qualifications ])
    end
end
