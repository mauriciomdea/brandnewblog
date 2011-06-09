# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Brandnewblog::Application.initialize!

Time::DATE_FORMATS[:date_en] = "%m/%d/%Y - %I:%M%p"
Time::DATE_FORMATS[:date_pt_br] = "%d/%m/%Y - %H:%M"