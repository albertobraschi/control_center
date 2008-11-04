# installs our control center stuff
require 'ftools'

# quick method for copying files only if they don't already
# exist
def install(source, target)
  print "Copying #{source}..."
  
  if File.exists?(resources_dir + source)
    File.copy(resources_dir + source,
        target)
    puts "Done!"
  else
    puts "File exists, Skipping."
  end
end

# get some basic vars set up
resources_dir = File.dirname(__FILE__) + "/resources"

# print a pretty message
puts
puts "Installing Control Center..."

# copy our files into the project
install("/control_center.css", 
    RAILS_ROOT + "/public/stylesheets/control_center.css")

install("/control_center.rb",
    RAILS_ROOT + "/config/initializers/control_center.rb")
    
install("/control_center.html.erb",
    RAILS_ROOT + "/app/views/layouts/control_center.html.erb")
install("/_header_links.html.erb",
    RAILS_ROOT + "/app/views/layouts/_header_links.html.erb")
install("/_tabs.html.erb",
    RAILS_ROOT + "/app/views/layouts/_tabs.html.erb")
# puts some space in here
puts
puts