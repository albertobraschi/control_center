class ControlCenter
  cattr_accessor :title
  cattr_accessor :header_links
  cattr_accessor :tabs
  cattr_accessor :theme_color
  
  def self.add_header_link(text, url)
    ControlCenter.header_links ||= []
    ControlCenter.header_links << [text, url]
  end
  
  def self.add_tab(text, url)
    ControlCenter.tabs ||= []
    ControlCenter.tabs << [text, url]
  end
end