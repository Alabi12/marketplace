require "application_system_test_case"

class ConsultingServicesTest < ApplicationSystemTestCase
  setup do
    @consulting_service = consulting_services(:one)
  end

  test "visiting the index" do
    visit consulting_services_url
    assert_selector "h1", text: "Consulting services"
  end

  test "should create consulting service" do
    visit consulting_services_url
    click_on "New consulting service"

    fill_in "Business consulting profile", with: @consulting_service.business_consulting_profile_id
    fill_in "Description", with: @consulting_service.description
    fill_in "Name", with: @consulting_service.name
    click_on "Create Consulting service"

    assert_text "Consulting service was successfully created"
    click_on "Back"
  end

  test "should update Consulting service" do
    visit consulting_service_url(@consulting_service)
    click_on "Edit this consulting service", match: :first

    fill_in "Business consulting profile", with: @consulting_service.business_consulting_profile_id
    fill_in "Description", with: @consulting_service.description
    fill_in "Name", with: @consulting_service.name
    click_on "Update Consulting service"

    assert_text "Consulting service was successfully updated"
    click_on "Back"
  end

  test "should destroy Consulting service" do
    visit consulting_service_url(@consulting_service)
    click_on "Destroy this consulting service", match: :first

    assert_text "Consulting service was successfully destroyed"
  end
end
