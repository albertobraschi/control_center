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

Subtabs
-------

Header Navigation
-----------------

Sidebars
--------

Forms
-----

Where are the tests?
--------------------
I'm usually very good about testing my code, but I wasn't sure of the best way to test something that was so interface intensive, so tests simply aren't present for the 1.0 release. Tests are one of my biggest goals for the 1.1 release.

Required Stuff
--------------
Copyright (c) 2008-2009 Alan Johnson, released under the MIT license
