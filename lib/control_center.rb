module ControlCenter
  class Config
    cattr_accessor :app_title
    cattr_accessor :theme_color
    cattr_accessor :custom_css
    cattr_accessor :include_javascript
    
    def self.custom_css
      @@custom_css ||= {}
    end
    
    def self.include_javascript
      @@include_javascript || []
    end
  end
end