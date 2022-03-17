require "test_helper"

class CookersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooker = cookers(:one)
  end

  test "should get index" do
    get cookers_url
    assert_response :success
  end

  test "should get new" do
    get new_cooker_url
    assert_response :success
  end

  test "should create cooker" do
    assert_difference('Cooker.count') do
      post cookers_url, params: { cooker: { address: @cooker.address, name: @cooker.name } }
    end

    assert_redirected_to cooker_url(Cooker.last)
  end

  test "should show cooker" do
    get cooker_url(@cooker)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooker_url(@cooker)
    assert_response :success
  end

  test "should update cooker" do
    patch cooker_url(@cooker), params: { cooker: { address: @cooker.address, name: @cooker.name } }
    assert_redirected_to cooker_url(@cooker)
  end

  test "should destroy cooker" do
    assert_difference('Cooker.count', -1) do
      delete cooker_url(@cooker)
    end

    assert_redirected_to cookers_url
  end

end
