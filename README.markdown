Control Center
==============

Control Center is a Rails plugin for bootstrapping the interface side of an application very quickly. It provides an interface with tabs and subtabs, and with a few nice default styles. Control Center is can be installed through the rails script/plugin script, or as a RubyGem.

Installation As A Rails Plugin
------------------------------
While we recommend installing as a RubyGem, installing as a Rails plugin is dead simple. From within the root of your Rails project do:

    script/plugin install git://github.com/commondream/control_center.git
    script/generate control_center

Installation As A RubyGem
-------------------------
Installation as a RubyGem ensures that you don't get any weirdness due to installing directly from the repository. Make sure you have GitHub in your gem sources before you try to do the install.

    gem install commondream-control_center

Now that you've got the gem installed, you'll need to configure your application to use control center. Add a line like the following to your environment.rb:

    config.gem "commondream-control_center"

Now, from the root of your rails project, run the following command:

    script/generate control_center

Post-Installation Configuration
-------------------------------
You'll want to look at environment/initializers/control_center.rb to customize the Control Center title and the color of the header. Also, you'll want to set your tabs up in app/views/layouts/_tabs.html.erb.

Tabs
----
Tabs are defined by default in the app/views/layouts/_tabs.html.erb partial. You can override the tabs in any page with the tabs helper.

Tabs are defined as follows:

    <%= tab "Title", "url" %>

You can create as many tabs as you would like, but be aware that at present the tabs will simply wrap to the next line if you include too many. We'll hopefully fix that in a future release, although you probably shouldn't use so many tabs that it would wrap anyway.

The tab method passes the url on to the Rails link_to helper, so the url can be a has or anything else that link_to accepts for its url parameter.

To select a tab, simply use the select_tab method in your view. select_tab chooses a tab based on the title given to the tab, so for example, with a tab definition like:

    <%= tab "Tab 1", "/some_url" %>
    <%= tab "Tab 2", "/some_other_url" %>

if you called:

    <% select_tab "Tab 1" %>

in your view, the tab titled *Tab 1* would be selected.

Subtabs
-------
Subtabs will typically be defined in a partial that you create and included in the views that use that particular set of subtabs. Although that's typical,
it's not mandatory. The app/views/layouts/_tabs.html.erb partial is another
great spot to put subtabs if you want to do more of a per-app tab configuration,
but that's tricker to implement in many cases. Anyway, a set of subtabs will
look something like this in your view:

    <% sub_tabs do %>
      <%= sub_tab "Sub Tab", "/subtab" %>
      <%= sub_tab "Sub Tab 2", "/subtab2" %>
    <% end %>
    
You can select what tab to mark as the current one with the select_sub_tab helper:

    <% select_sub_tab "Sub Tab" %>
    
The sub_tabs helper does not output the tabs, because the Control Center
layout has a specific place where it needs to put them. So, don't worry about
where you put the sub tab definition in your view... as long as its in your
view, they'll show up correctly.

Header Navigation
-----------------
The content at the very top right of Control Center is great for login/logout links, help links, etc. You can modify that content by editing the app/views/layouts/_header_links.html.erb partial.

Sidebars
--------
Control Center has two primary layouts at present, a single column display and a two column display. The two column display shows a sidebar to the right side of the screen. To generate content for the sidebar, simply put normal content, like p, div, ul tags into the sidebar helper in your view:

  <% sidebar do %>
    <h3>This is a sidebar!</h3>
    
    <p>
      Aw, yeah! This is a sidebar. Didn't think you'd be creating sidebars
      today, did you? Well, you are!
    </p>
  <% end %>

Forms
-----

Screenshots
-----------


Where are the tests?
--------------------
I'm usually very good about testing my code, but I wasn't sure of the best way to test something that was so interface intensive, so tests simply aren't present for the 1.0 release. Tests are one of my biggest goals for the 1.1 release.

License
-------
Copyright (c) 2008-2009 Alan Johnson

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
