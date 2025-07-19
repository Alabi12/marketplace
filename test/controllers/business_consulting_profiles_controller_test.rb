require "test_helper"

class BusinessConsultingProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_consulting_profile = business_consulting_profiles(:one)
  end

  test "should get index" do
    get business_consulting_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_business_consulting_profile_url
    assert_response :success
  end

  test "should create business_consulting_profile" do
    assert_difference("BusinessConsultingProfile.count") do
      post business_consulting_profiles_url, params: { business_consulting_profile: { expertise: @business_consulting_profile.expertise, qualifications: @business_consulting_profile.qualifications, user_id: @business_consulting_profile.user_id } }
    end

    assert_redirected_to business_consulting_profile_url(BusinessConsultingProfile.last)
  end

  test "should show business_consulting_profile" do
    get business_consulting_profile_url(@business_consulting_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_consulting_profile_url(@business_consulting_profile)
    assert_response :success
  end

  test "should update business_consulting_profile" do
    patch business_consulting_profile_url(@business_consulting_profile), params: { business_consulting_profile: { expertise: @business_consulting_profile.expertise, qualifications: @business_consulting_profile.qualifications, user_id: @business_consulting_profile.user_id } }
    assert_redirected_to business_consulting_profile_url(@business_consulting_profile)
  end

  test "should destroy business_consulting_profile" do
    assert_difference("BusinessConsultingProfile.count", -1) do
      delete business_consulting_profile_url(@business_consulting_profile)
    end

    assert_redirected_to business_consulting_profiles_url
  end
end
