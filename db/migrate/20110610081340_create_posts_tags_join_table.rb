class CreatePostsTagsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :posts_tags, :id => false do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :posts_tags
  end
end
