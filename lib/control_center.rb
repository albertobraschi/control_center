module ControlCenter
  class Config
    cattr_accessor :app_title
    cattr_accessor :theme_color
    cattr_accessor :custom_css
    
    def self.custom_css
      @@custom_css ||= {}
    end
  end
end