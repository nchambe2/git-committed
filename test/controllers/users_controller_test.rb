require 'test_helper'

class UsersControllerTest < ActiveSupport::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, :post => { :title => 'Hi', :body => 'This is my first post.'}
    end
    assert_redirected_to post_path(assigns(:post))
    assert_equal 'Post was successfully created.', flash[:notice]
  end
end