# Helpers that control center uses
module ControlCenter::Helpers
  def title(title)
    @control_center_title = title
  end
  
  # Block for the primary tabs on the site.
  def tabs(&block)
    if block_given?
      content_for :primary_nav do
        yield
      end
    end
  end
  
  # Helper for generating tabs.
  def tab(tab_name, url)
    options = {}
    options[:class] = "active" if @control_center_tab == tab_name
    content_tag "li", options, true do
      link_to tab_name, url
    end
  end
  
  # Block for the subtabs on the site.
  def sub_tabs(&block)
    if block_given?
      content_for :secondary_nav do
        yield
      end
    end
  end
  
  # Helper for generating subtabs.
  def sub_tab(sub_tab_name, url)
    options = {}
    options[:class] = "active" if @control_center_sub_tab == sub_tab_name
    content_tag "li", options, true do
      link_to sub_tab_name, url
    end
  end
  
  def select_tab(tab)
    @control_center_tab = tab
  end
  def current_tab
    @control_center_tab
  end
  
  def select_sub_tab(sub_tab)
    @control_center_sub_tab = sub_tab
  end
  def current_sub_tab
    @control_center_sub_tab
  end
  
  # Sets up a sidebar in control center.
  def sidebar(&block)
    if block_given?
      content_for :sidebar do
        yield
      end
    end
  end
  
  def sidebar?
    yield(:sidebar) != nil
  end
end