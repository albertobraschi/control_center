class ControlCenterGenerator < Rails::Generator::Base
  def banner
    "Usage #{$0} #{spec.name}"
  end
  
  def manifest
    record do |m|
      # set up the stylesheet
      m.directory('public/stylesheets')
      m.file('control_center.css',
          'public/stylesheets/control_center.css')
      
      # copy the layouts over
      layouts_path = 'app/views/layouts'
      m.directory(layouts_path)
      m.file('_tabs.html.erb', 
          File.join(layouts_path, "_tabs.html.erb"))
      m.file('_header_links.html.erb',
          File.join(layouts_path, "_header_links.html.erb"))
      m.file('control_center.html.erb',
          File.join(layouts_path, "control_center.html.erb"))
          
      # copy the initializer over
      m.file 'control_center.rb', 
        File.join("config", "initializers", "control_center.rb")
    end
  end
end