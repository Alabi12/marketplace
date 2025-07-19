require "application_system_test_case"

class SkillServicesTest < ApplicationSystemTestCase
  setup do
    @skill_service = skill_services(:one)
  end

  test "visiting the index" do
    visit skill_services_url
    assert_selector "h1", text: "Skill services"
  end

  test "should create skill service" do
    visit skill_services_url
    click_on "New skill service"

    fill_in "Description", with: @skill_service.description
    fill_in "Name", with: @skill_service.name
    fill_in "Skilled professional profile", with: @skill_service.skilled_professional_profile_id
    click_on "Create Skill service"

    assert_text "Skill service was successfully created"
    click_on "Back"
  end

  test "should update Skill service" do
    visit skill_service_url(@skill_service)
    click_on "Edit this skill service", match: :first

    fill_in "Description", with: @skill_service.description
    fill_in "Name", with: @skill_service.name
    fill_in "Skilled professional profile", with: @skill_service.skilled_professional_profile_id
    click_on "Update Skill service"

    assert_text "Skill service was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill service" do
    visit skill_service_url(@skill_service)
    click_on "Destroy this skill service", match: :first

    assert_text "Skill service was successfully destroyed"
  end
end
