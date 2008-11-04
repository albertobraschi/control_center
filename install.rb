# installs our control center stuff
require 'ftools'

# get some basic vars set up
resources_dir = File.dirname(__FILE__) + "/resources"

# quick method for copying files only if they don't already
# exist
def install(source, target)
  print "Copying #{source}..."
  
  if File.exists?(resources_dir + source)
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