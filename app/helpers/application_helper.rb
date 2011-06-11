module ApplicationHelper
  
  # Removes HTML tags from a string. Allows you to specify some tags to be kept.
  def strip_html(text)
    allowed = ['a', 'i', 'br']
    re = if allowed.any?
      Regexp.new(
        %(<(?!(\\s|\\/)*( #{allowed.map {|tag| Regexp.escape( tag )}.join( "|" )}
                         )( |>|\\/|'|"|<|\\s*\\z))[^>]*(>+|\\s*\\z)),
        Regexp::IGNORECASE | Regexp::MULTILINE, 'u'
      )
    else
      /<[^>]*(>+|\s*\z)/m
    end
    text.gsub(re,'')
  end
    
end
