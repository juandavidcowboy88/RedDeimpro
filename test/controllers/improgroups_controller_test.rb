require 'test_helper'

class ImprogroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @improgroup = improgroups(:one)
  end

  test "should get index" do
    get improgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_improgroup_url
    assert_response :success
  end

  test "should create improgroup" do
    assert_difference('Improgroup.count') do
      post improgroups_url, params: { improgroup: { actors_improgroups: @improgroup.actors_improgroups, creation_year: @improgroup.creation_year, image_improgroups: @improgroup.image_improgroups, name_improgroups: @improgroup.name_improgroups } }
    end

    assert_redirected_to improgroup_url(Improgroup.last)
  end

  test "should show improgroup" do
    get improgroup_url(@improgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_improgroup_url(@improgroup)
    assert_response :success
  end

  test "should update improgroup" do
    patch improgroup_url(@improgroup), params: { improgroup: { actors_improgroups: @improgroup.actors_improgroups, creation_year: @improgroup.creation_year, image_improgroups: @improgroup.image_improgroups, name_improgroups: @improgroup.name_improgroups } }
    assert_redirected_to improgroup_url(@improgroup)
  end

  test "should destroy improgroup" do
    assert_difference('Improgroup.count', -1) do
      delete improgroup_url(@improgroup)
    end

    assert_redirected_to improgroups_url
  end
end
