class Tag < ActiveRecord::Base
  
  has_and_belongs_to_many :posts
  
  attr_accessible :name
  
  validates :name,  :presence => { :message => " cannot be empty." },
                    :length => { :maximum => 25, :message => " cannot be longer than 25 characters." }

end
