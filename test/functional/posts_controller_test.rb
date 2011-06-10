require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  
  def setup
    @controller = PostsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    @post       =  Post.new :author => "Test Author",
                            :title => "Test Title"
  end
  
  test "should create a new post" do
    get :create, :post => @post
    assert_response :success
    #assert_redirected_to :action => :new
    #assert_equal 'Post successfully created.', flash[:notice]
  end
  
  test "should not create a new post" do
    #get :create, :post => nil
    #assert_response :failure
    true
  end
  
  test "should show a post" do
    true
  end
  
  test "should not find unexisting post" do
    true
  end
  
  test "should find and update a post" do
    true
  end

  test "should destroy a post" do
    true
  end
  
end
