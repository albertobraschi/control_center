class ControlCenter
  cattr_accessor :title
  cattr_accessor :header_links
  cattr_accessor :tabs
  cattr_accessor :theme_color
  
  def self.add_header_link(text, &block)
    ControlCenter.header_links ||= []
    ControlCenter.header_links << [text, block]
  end
  
  def self.add_tab(text, &block)
    ControlCenter.tabs ||= []
    ControlCenter.tabs << [text, block]
  end
end
