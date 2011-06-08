class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :author, :limit => 50
      t.string :title, :limit => 100
      t.string :excerpt, :limit => 255
      t.text :text
      t.string :thumbnail

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
