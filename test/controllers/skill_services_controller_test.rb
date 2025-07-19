require "test_helper"

class SkillServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_service = skill_services(:one)
  end

  test "should get index" do
    get skill_services_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_service_url
    assert_response :success
  end

  test "should create skill_service" do
    assert_difference("SkillService.count") do
      post skill_services_url, params: { skill_service: { description: @skill_service.description, name: @skill_service.name, skilled_professional_profile_id: @skill_service.skilled_professional_profile_id } }
    end

    assert_redirected_to skill_service_url(SkillService.last)
  end

  test "should show skill_service" do
    get skill_service_url(@skill_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_service_url(@skill_service)
    assert_response :success
  end

  test "should update skill_service" do
    patch skill_service_url(@skill_service), params: { skill_service: { description: @skill_service.description, name: @skill_service.name, skilled_professional_profile_id: @skill_service.skilled_professional_profile_id } }
    assert_redirected_to skill_service_url(@skill_service)
  end

  test "should destroy skill_service" do
    assert_difference("SkillService.count", -1) do
      delete skill_service_url(@skill_service)
    end

    assert_redirected_to skill_services_url
  end
end
