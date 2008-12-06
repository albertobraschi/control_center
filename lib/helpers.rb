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
  
  def select_tab(tab)
    @control_center_tab = tab
  end
end