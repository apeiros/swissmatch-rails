README
======


Summary
-------
Adds ActiveRecord models and javascript assets for rails to swissmatch.


Installation
------------
Install the gem: `gem install swissmatch-rails`  
Depending on how you installed rubygems, you have to use `sudo`:
`sudo gem install swissmatch-rails`  
In Ruby: `require 'swissmatch/rails'`


Usage
-----
### Gemfile
To use swissmatch-rails, the best way is to put the following line into your Gemfile:

    gem 'swissmatch', :require => 'swissmatch/rails'


### SwissMatch and Databases
If you want to load the data into your database, you can use:

    swissmatch_db create
    swissmatch_db seed

This needs active\_record 3.2+ to be installed, and you should either be in a rails project, or
use the -c option to specify a database configuration file.
The models used for that can be loaded by `require 'swissmatch/active_record'`.
See SwissMatch::ActiveRecord::Canton, SwissMatch::ActiveRecord::Community and
SwissMatch::ActiveRecord::ZipCode

### Configuration
The swissmatch-rails gem loads the configuration from PROJECT_ROOT/config/swissmatch.yml.
The file should have the following structure:

    global:
      telsearch_key:    "your telsearch API key"
      data_directory:   "A path to where you want your data files stored, relative paths are relative to PROJECT_ROOT"
      cache_directory:  "A path to where swissmatch should store its cache"
    development:
      # same keys as for global, you can have environment specific settings here

The key 'global' will be used as the base for every environment.


Relevant Classes and Modules
----------------------------
* __{SwissMatch::ActiveRecord}__
  Container for all ActiveRecord models


Links
-----

* [Main Project](https://github.com/apeiros/swissmatch)
* [Online API Documentation](http://rdoc.info/github/apeiros/swissmatch-directories/)
* [Public Repository](https://github.com/apeiros/swissmatch-directories)
* [Bug Reporting](https://github.com/apeiros/swissmatch-directories/issues)
* [RubyGems Site](https://rubygems.org/gems/swissmatch-directories)
* [Swiss Posts MAT[CH]](http://www.post.ch/match)


License
-------

You can use this code under the {file:LICENSE.txt BSD-2-Clause License}, free of charge.
If you need a different license, please ask the author.


Credits
-------

* [Swiss Life Select Schweiz AG](http://www.swisslife-select.ch/) for donating time to work on this gem.
