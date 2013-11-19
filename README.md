Ceedling-Autorake
=================

Autotest for Ceedling projects
------------------------------

Using the [Watch gem](//rubygems.org/gems/watch) and [YAML](//rubygems.org/gems/yaml) configuration compatible with [Ceedling's](rubygems.org/gems/ceedling) project.yml, this simple code allows you to just code and let Ceedling run your tests in the background.

Installation
------------

    gem install ceedling-autorake
    

Configuration
-------------

Add something like this to your project.yml file:

    :autorake:
        :paths:
            - tests
            - src
            - mocks

Easy integration
----------------

1. Add these lines to your project's `rakefile.rb`:
    
        require "Autorake"
        
        task :auto do
            Autorake.new "project.yml"
        end

2. Now run:

        rake auto

3. Cackle like an evil genius.
