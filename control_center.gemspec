PKG_VERSION = "0.99"

Gem::Specification.new do |s|
  require 'gem_files'
  
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

  s.files = GEM_FILES
  s.require_path = 'lib'
  s.has_rdoc = true

  s.author = "Alan Johnson"
  s.email = "alan@commondream.net"
  s.homepage = "http://www.commondream.net"
end
