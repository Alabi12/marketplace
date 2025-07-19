require "application_system_test_case"

class SkilledProfessionalProfilesTest < ApplicationSystemTestCase
  setup do
    @skilled_professional_profile = skilled_professional_profiles(:one)
  end

  test "visiting the index" do
    visit skilled_professional_profiles_url
    assert_selector "h1", text: "Skilled professional profiles"
  end

  test "should create skilled professional profile" do
    visit skilled_professional_profiles_url
    click_on "New skilled professional profile"

    fill_in "Experience", with: @skilled_professional_profile.experience
    fill_in "Portfolio url", with: @skilled_professional_profile.portfolio_url
    fill_in "Skill type", with: @skilled_professional_profile.skill_type
    fill_in "User", with: @skilled_professional_profile.user_id
    click_on "Create Skilled professional profile"

    assert_text "Skilled professional profile was successfully created"
    click_on "Back"
  end

  test "should update Skilled professional profile" do
    visit skilled_professional_profile_url(@skilled_professional_profile)
    click_on "Edit this skilled professional profile", match: :first

    fill_in "Experience", with: @skilled_professional_profile.experience
    fill_in "Portfolio url", with: @skilled_professional_profile.portfolio_url
    fill_in "Skill type", with: @skilled_professional_profile.skill_type
    fill_in "User", with: @skilled_professional_profile.user_id
    click_on "Update Skilled professional profile"

    assert_text "Skilled professional profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Skilled professional profile" do
    visit skilled_professional_profile_url(@skilled_professional_profile)
    click_on "Destroy this skilled professional profile", match: :first

    assert_text "Skilled professional profile was successfully destroyed"
  end
end
