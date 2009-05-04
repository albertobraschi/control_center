PKG_VERSION = "0.99"

Gem::Specification.new do |s|
  
  s.name = 'control_center'
  s.version = PKG_VERSION
  s.platform = Gem::Platform::RUBY
  s.description = <<-DESC.strip.gsub(/\n\s+/, " ")
    Control Center is a Rails plugin that helps in quickly developing
    interfaces for website administration and application prototyping.
  DESC
  s.summary = <<-DESC.strip.gsub(/\n\s+/, " ")
    A Rails plugin that helps in quickly developing admin style interfaces.
  DESC

  s.files = ['lib/control_center.rb', 'lib/generator.rb', 'lib/helpers.rb', 'lib/tab_builder.rb', 'rails/init.rb', 'generators/control_center', 'generators/control_center/control_center_generator.rb', 'generators/control_center/templates', 'generators/control_center/templates/_header_links.html.erb', 'generators/control_center/templates/_sub_tabs.html.erb', 'generators/control_center/templates/_tabs.html.erb', 'generators/control_center/templates/control_center.css', 'generators/control_center/templates/control_center.html.erb', 'generators/control_center/templates/control_center.rb', 'tasks/control_center_tasks.rake', 'test/control_center_test.rb', 'README.markdown', 'MIT-LICENSE']
  s.require_path = 'lib'
  s.has_rdoc = true

  s.author = "Alan Johnson"
  s.email = "alan@commondream.net"
  s.homepage = "http://www.commondream.net"
end
