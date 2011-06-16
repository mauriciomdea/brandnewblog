module PostsHelper
  
  def join_tags(tags)
    if !tags.nil?
      tags.map { |t| t.name }.join(", ")
    else
      "No tags found."
    end
  end
    
end
