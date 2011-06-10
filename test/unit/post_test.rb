require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @post =  Post.new :author => "Test Author",
                      :title => "Test Title"
  end
  
  test "should save sample post" do
    assert @post.save, "Sample post could not be saved/inserted!"
  end
  
  test "post should not be saved without an author" do
    @post.author = nil
    assert !@post.save, "Saved a post without an author!"
  end
  
  test "post author should not be longer than 50 chars" do
    @post.author = 51.times.map{"x"}.join
    assert !@post.save, "Saved a post with an author longer than 50 chars!"
  end
  
  test "post should not be saved without a title" do
    @post.title = nil
    assert !@post.save, "Saved a post without a title!"
  end
  
  test "post title should not be longer than 100 characters" do
    @post.title = 101.times.map{"x"}.join
    assert !@post.save, "Saved a post with a title longer than 100 chars!"
  end
  
  test "post excerpt should not be longer than 255 characters" do
    @post.excerpt = 256.times.map{"x"}.join
    assert !@post.save, "Saved a post with an excerpt longer than 255 chars!"
  end
  
  test "sample post should be destroyed" do
    assert @post.destroy, "Sample post could not be destroyed/deleted!"
  end
  
end
