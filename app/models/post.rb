class Post < ActiveRecord::Base
  
  validates :author,  :presence => { :message => " cannot be empty." },
                      :length => { :maximum => 50, :message => " cannot be longer than 50 characters." }
  validates :title,   :presence => { :message => " cannot be empty." }, 
                      :length => { :maximum => 100, :message => " cannot be longer than 100 characters." }
  
end
