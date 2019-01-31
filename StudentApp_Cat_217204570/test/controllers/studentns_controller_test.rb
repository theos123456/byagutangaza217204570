require 'test_helper'

class StudentnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentn = studentns(:one)
  end

  test "should get index" do
    get studentns_url
    assert_response :success
  end

  test "should get new" do
    get new_studentn_url
    assert_response :success
  end

  test "should create studentn" do
    assert_difference('Studentn.count') do
      post studentns_url, params: { studentn: { address: @studentn.address, name: @studentn.name, phone: @studentn.phone, regno: @studentn.regno, string: @studentn.string } }
    end

    assert_redirected_to studentn_url(Studentn.last)
  end

  test "should show studentn" do
    get studentn_url(@studentn)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentn_url(@studentn)
    assert_response :success
  end

  test "should update studentn" do
    patch studentn_url(@studentn), params: { studentn: { address: @studentn.address, name: @studentn.name, phone: @studentn.phone, regno: @studentn.regno, string: @studentn.string } }
    assert_redirected_to studentn_url(@studentn)
  end

  test "should destroy studentn" do
    assert_difference('Studentn.count', -1) do
      delete studentn_url(@studentn)
    end

    assert_redirected_to studentns_url
  end
end
