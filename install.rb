# installs our control center stuff
require 'ftools'

# quick method for copying files only if they don't already
# exist
=begin
def install(source, target)
  # get some basic vars set up
  resources_dir = File.dirname(__FILE__) + "/resources"
  
  print "Copying #{source}..."
  
  if !File.exists?(RAILS_ROOT + target)
    File.copy(resources_dir + source,
        RAILS_ROOT + target)
    puts "Done!"
  else
    puts "File exists, Skipping."
  end
end

# print a pretty message
puts
puts "Installing Control Center..."

# copy our files into the project
install("/control_center.css", 
    "/public/stylesheets/control_center.css")

install("/control_center.rb",
    "/config/initializers/control_center.rb")
    
install("/control_center.html.erb",
    "/app/views/layouts/control_center.html.erb")
install("/_header_links.html.erb",
    "/app/views/layouts/_header_links.html.erb")
install("/_tabs.html.erb",
    "/app/views/layouts/_tabs.html.erb")
    
# puts some space in here
puts
puts
=end