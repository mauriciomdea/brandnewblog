class Post < ActiveRecord::Base
  
  validates :author, :presence => true, :length => { :maximum => 50 }
  validates :title, :presence => true, :length => { :maximum => 100 }
  
end
