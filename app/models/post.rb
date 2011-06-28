class Post < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  
  attr_accessible :author, :title, :excerpt, :text, :thumbnail
  
  validates :author,    :presence => { :message => " cannot be empty." },
                        :length => { :maximum => 50, :message => " cannot be longer than 50 characters." }
  validates :title,     :presence => { :message => " cannot be empty." }, 
                        :length => { :maximum => 100, :message => " cannot be longer than 100 characters." }
  validates :excerpt,   :length => { :maximum => 255, :message => " cannot be longer than 255 characters." }
  validates :text,      :presence => { :message => " cannot be empty." }
  validates :thumbnail, :length => { :maximum => 255, :message => " cannot be longer than 255 characters." }
  
  def headline
    if self.excerpt.empty?
      self.text[0,254]
    else
      self.excerpt
    end
  end
  
  def year
    self.created_at.year
  end
  
  def month
    self.created_at.month
  end
  
  # Permalink mods
  def to_s
    title
  end

  def to_param
    "#{id}-#{to_s.parameterize}"    
  end

end
