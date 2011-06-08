require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  test "posts should not be saved without author" do
    post =  Post.new :title => "Test Title"
    assert !post.save, "Saved a post without an author!"
  end
  
  test "posts author should not be longer than 50 chars" do
    post =  Post.new  :title => "Test Title",
                      :author => 51.times.map{"x"}.join
    assert !post.save, "Saved a post with an author longer than 50 chars!"
  end
  
  test "posts should not be saved without title" do
    post =  Post.new :author => "Test Author"
    assert !post.save, "Saved a post without a title!"
  end
  
  test "posts title should not be longer than 100 characters" do
    post =  Post.new  :title => 101.times.map{"x"}.join,
                      :author => "Test Author"
    assert !post.save, "Saved a post with a title longer than 100 chars!"
  end
  
  test "sample post should be saved then destroyed" do
    post =  Post.new  :author => "Test Author",
                      :title => "Test Title" 
    assert post.save, "Sample post could not be saved/inserted!"
    assert post.destroy, "Sample post could not be destroyed/deleted!"
  end
  
end
