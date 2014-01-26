require 'test_helper'

class HazardsControllerTest < ActionController::TestCase
  setup do
    @hazard = hazards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hazards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hazard" do
    assert_difference('Hazard.count') do
      post :create, hazard: { area_id: @hazard.area_id, image_url: @hazard.image_url, name: @hazard.name, prevention: @hazard.prevention, products: @hazard.products, risks: @hazard.risks }
    end

    assert_redirected_to hazard_path(assigns(:hazard))
  end

  test "should show hazard" do
    get :show, id: @hazard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hazard
    assert_response :success
  end

  test "should update hazard" do
    put :update, id: @hazard, hazard: { area_id: @hazard.area_id, image_url: @hazard.image_url, name: @hazard.name, prevention: @hazard.prevention, products: @hazard.products, risks: @hazard.risks }
    assert_redirected_to hazard_path(assigns(:hazard))
  end

  test "should destroy hazard" do
    assert_difference('Hazard.count', -1) do
      delete :destroy, id: @hazard
    end

    assert_redirected_to hazards_path
  end
end
