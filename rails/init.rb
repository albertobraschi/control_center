# Include hook code here
require File.join(File.dirname(__FILE__), "../lib/control_center.rb")
require File.join(File.dirname(__FILE__), "../lib/helpers.rb")

# Include the helpers we've written
ActionView::Base.send :include, ControlCenter::Helpers