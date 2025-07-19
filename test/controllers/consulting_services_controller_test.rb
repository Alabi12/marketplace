require "test_helper"

class ConsultingServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulting_service = consulting_services(:one)
  end

  test "should get index" do
    get consulting_services_url
    assert_response :success
  end

  test "should get new" do
    get new_consulting_service_url
    assert_response :success
  end

  test "should create consulting_service" do
    assert_difference("ConsultingService.count") do
      post consulting_services_url, params: { consulting_service: { business_consulting_profile_id: @consulting_service.business_consulting_profile_id, description: @consulting_service.description, name: @consulting_service.name } }
    end

    assert_redirected_to consulting_service_url(ConsultingService.last)
  end

  test "should show consulting_service" do
    get consulting_service_url(@consulting_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulting_service_url(@consulting_service)
    assert_response :success
  end

  test "should update consulting_service" do
    patch consulting_service_url(@consulting_service), params: { consulting_service: { business_consulting_profile_id: @consulting_service.business_consulting_profile_id, description: @consulting_service.description, name: @consulting_service.name } }
    assert_redirected_to consulting_service_url(@consulting_service)
  end

  test "should destroy consulting_service" do
    assert_difference("ConsultingService.count", -1) do
      delete consulting_service_url(@consulting_service)
    end

    assert_redirected_to consulting_services_url
  end
end
