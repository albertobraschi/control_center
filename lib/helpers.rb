require 'tab_builder'

# Helpers that control center uses
module ControlCenter::Helpers
  
  def title(title)
    @control_center_title = title
  end
  
  def select_tab(tab)
    @cc_current_tab = tab
  end
  def current_tab
    @cc_current_tab
  end
  
  def sub_tabs
    if block_given?
      content_for :sub_tabs do
        yield
      end
    end
  end
  
  def select_sub_tab(tab)
    @cc_current_sub_tab = tab
  end
  def current_sub_tab
    @cc_current_sub_tab
  end
  
  # Sets up a sidebar in control center.
  def sidebar(&block)
    if block_given?
      @sidebar_set = true
      content_for :sidebar do
        yield
      end
    end
  end
  
  def sidebar?
    @sidebar_set ||= false
    @sidebar_set
  end
  
  def tab(tab_name, tab_url)
    options = {}
    options[:class] = "active" if  current_tab == tab_name
    content_tag "li", options, true do
      link_to tab_name, tab_url
    end
  end
  
  def sub_tab(tab_name, tab_url)
    options = {}
    options[:class] = "active" if  current_sub_tab == tab_name
    content_tag "li", options, true do
      link_to tab_name, tab_url
    end
  end
end