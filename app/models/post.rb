class Post < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  
  validates :author,  :presence => { :message => " cannot be empty." },
                      :length => { :maximum => 50, :message => " cannot be longer than 50 characters." }
  validates :title,   :presence => { :message => " cannot be empty." }, 
                      :length => { :maximum => 100, :message => " cannot be longer than 100 characters." }
  validates :excerpt, :length => { :maximum => 255, :message => " cannot be longer than 255 characters." }

end
