require "application_system_test_case"

class BusinessConsultingProfilesTest < ApplicationSystemTestCase
  setup do
    @business_consulting_profile = business_consulting_profiles(:one)
  end

  test "visiting the index" do
    visit business_consulting_profiles_url
    assert_selector "h1", text: "Business consulting profiles"
  end

  test "should create business consulting profile" do
    visit business_consulting_profiles_url
    click_on "New business consulting profile"

    fill_in "Expertise", with: @business_consulting_profile.expertise
    fill_in "Qualifications", with: @business_consulting_profile.qualifications
    fill_in "User", with: @business_consulting_profile.user_id
    click_on "Create Business consulting profile"

    assert_text "Business consulting profile was successfully created"
    click_on "Back"
  end

  test "should update Business consulting profile" do
    visit business_consulting_profile_url(@business_consulting_profile)
    click_on "Edit this business consulting profile", match: :first

    fill_in "Expertise", with: @business_consulting_profile.expertise
    fill_in "Qualifications", with: @business_consulting_profile.qualifications
    fill_in "User", with: @business_consulting_profile.user_id
    click_on "Update Business consulting profile"

    assert_text "Business consulting profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Business consulting profile" do
    visit business_consulting_profile_url(@business_consulting_profile)
    click_on "Destroy this business consulting profile", match: :first

    assert_text "Business consulting profile was successfully destroyed"
  end
end
