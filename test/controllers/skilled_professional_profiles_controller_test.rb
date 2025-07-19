require "test_helper"

class SkilledProfessionalProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skilled_professional_profile = skilled_professional_profiles(:one)
  end

  test "should get index" do
    get skilled_professional_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_skilled_professional_profile_url
    assert_response :success
  end

  test "should create skilled_professional_profile" do
    assert_difference("SkilledProfessionalProfile.count") do
      post skilled_professional_profiles_url, params: { skilled_professional_profile: { experience: @skilled_professional_profile.experience, portfolio_url: @skilled_professional_profile.portfolio_url, skill_type: @skilled_professional_profile.skill_type, user_id: @skilled_professional_profile.user_id } }
    end

    assert_redirected_to skilled_professional_profile_url(SkilledProfessionalProfile.last)
  end

  test "should show skilled_professional_profile" do
    get skilled_professional_profile_url(@skilled_professional_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_skilled_professional_profile_url(@skilled_professional_profile)
    assert_response :success
  end

  test "should update skilled_professional_profile" do
    patch skilled_professional_profile_url(@skilled_professional_profile), params: { skilled_professional_profile: { experience: @skilled_professional_profile.experience, portfolio_url: @skilled_professional_profile.portfolio_url, skill_type: @skilled_professional_profile.skill_type, user_id: @skilled_professional_profile.user_id } }
    assert_redirected_to skilled_professional_profile_url(@skilled_professional_profile)
  end

  test "should destroy skilled_professional_profile" do
    assert_difference("SkilledProfessionalProfile.count", -1) do
      delete skilled_professional_profile_url(@skilled_professional_profile)
    end

    assert_redirected_to skilled_professional_profiles_url
  end
end
