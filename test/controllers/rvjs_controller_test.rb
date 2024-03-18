require "test_helper"

class RvjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rvj = rvjs(:one)
  end

  test "should get index" do
    get rvjs_url
    assert_response :success
  end

  test "should get new" do
    get new_rvj_url
    assert_response :success
  end

  test "should create rvj" do
    assert_difference("Rvj.count") do
      post rvjs_url, params: { rvj: { block: @rvj.block, title: @rvj.title } }
    end

    assert_redirected_to rvj_url(Rvj.last)
  end

  test "should show rvj" do
    get rvj_url(@rvj)
    assert_response :success
  end

  test "should get edit" do
    get edit_rvj_url(@rvj)
    assert_response :success
  end

  test "should update rvj" do
    patch rvj_url(@rvj), params: { rvj: { block: @rvj.block, title: @rvj.title } }
    assert_redirected_to rvj_url(@rvj)
  end

  test "should destroy rvj" do
    assert_difference("Rvj.count", -1) do
      delete rvj_url(@rvj)
    end

    assert_redirected_to rvjs_url
  end
end
