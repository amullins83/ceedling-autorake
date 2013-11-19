Ceedling-Autorake
=================

Autotest for Ceedling projects
------------------------------

Using the [Watch gem](//rubygems.org/gems/watch) and [YAML](//rubygems.org/gems/yaml) configuration compatible with [Ceedling's](rubygems.org/gems/ceedling) project.yml, this simple code allows you to just code and let Ceedling run your tests in the background.

Installation and Use
------------

    cd {Your Project Root}/vendor
    git clone https://github.com/amullins83/ceedling-autorake
    cd ceedling-autorake/lib
    ruby autorake.rb

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
    
        PROJECT_AUTORAKE_ROOT = "vendor/autorake"
        load "#{PROJECT_AUTORAKE_ROOT}/lib/autorake.rb"
        
        task :auto do
            Autorake.new "project.yml"
        end

2. Now run:

        rake auto

3. Cackle like an evil genius.
