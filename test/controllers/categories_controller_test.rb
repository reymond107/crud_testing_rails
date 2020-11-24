require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should show category" do
    get show_category_url(@category)
    assert_response :success
  end

  test "should get create" do
    post create_category_url(@category), params: {category: {name: "update name updated", description: "update description updated"}}
    assert_redirected_to categories_url
  end
  
  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch update_category_path(@category), params: {category: {name: "update name updated", description: "update description updated"}}
    assert_redirected_to categories_url
  end 


  test "should destroy category" do
    delete delete_category_url(@category)
    assert_redirected_to categories_url
  end

end
