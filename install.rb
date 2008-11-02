# installs our control center stuff
require 'ftools'

# get some basic vars set up
resources_dir = File.dirname(__FILE__) + "/resources"

# print a pretty message
puts
puts "Installing Control Center..."

# copy our files into the project
print "Copying stylesheet... "
File.copy(resources_dir + "/control_center.css", 
    RAILS_ROOT + "/public/stylesheets/control_center.css")
puts "Done!"

print "Copying layout... "
File.copy(resources_dir + "/control_center.html.erb",
    RAILS_ROOT + "/app/views/layouts/control_center.html.erb")
puts "Done!"

print "Copying initializer... "
File.copy(resources_dir + "/control_center.html.erb",
    RAILS_ROOT + "/config/initializers/control_center.rb")    
puts "Done!"

# puts some space in here
puts
puts