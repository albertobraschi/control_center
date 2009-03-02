# Helpers that control center uses
module ControlCenter::Helpers
  def title(title)
    @control_center_title = title
  end
  
  def tab(tab_name, url)
    options = {}
    options[:class] = "active" if @control_center_tab == tab_name
    content_tag "li", options, true do
      link_to tab_name, url
    end
  end
  def sub_tab(sub_tab_name, url)
    options = {}
    if @control_center_sub_tab == sub_tab_name
      options[:class] = "active" 
    else
      options[:style] = "background-color: #{ControlCenter::Config.theme_color};"
    end
    content_tag "li", options, true do
      link_to sub_tab_name, url
    end
  end
  
  def select_tab(tab)
    @control_center_tab = tab
  end
  def select_sub_tab(sub_tab)
    @control_center_sub_tab = sub_tab
  end
end