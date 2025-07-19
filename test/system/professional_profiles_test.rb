require "application_system_test_case"

class ProfessionalProfilesTest < ApplicationSystemTestCase
  setup do
    @professional_profile = professional_profiles(:one)
  end

  test "visiting the index" do
    visit professional_profiles_url
    assert_selector "h1", text: "Professional profiles"
  end

  test "should create professional profile" do
    visit professional_profiles_url
    click_on "New professional profile"

    fill_in "Bio", with: @professional_profile.bio
    fill_in "Specialties", with: @professional_profile.specialties
    fill_in "User", with: @professional_profile.user_id
    click_on "Create Professional profile"

    assert_text "Professional profile was successfully created"
    click_on "Back"
  end

  test "should update Professional profile" do
    visit professional_profile_url(@professional_profile)
    click_on "Edit this professional profile", match: :first

    fill_in "Bio", with: @professional_profile.bio
    fill_in "Specialties", with: @professional_profile.specialties
    fill_in "User", with: @professional_profile.user_id
    click_on "Update Professional profile"

    assert_text "Professional profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Professional profile" do
    visit professional_profile_url(@professional_profile)
    click_on "Destroy this professional profile", match: :first

    assert_text "Professional profile was successfully destroyed"
  end
end
