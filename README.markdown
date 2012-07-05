README
======


Summary
-------
Adds ActiveRecord models and javascript assets for rails to swissmatch.



Installation
------------
`gem install swissmatch-rails`



Usage
-----
### Example usage

    require 'swissmatch/rails'


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



Description
-----------
Adds ActiveRecord models and javascript assets for rails to swissmatch.



Credits
-------

* <a href="http://www.awd.ch/">AWD Switzerland</a>, for donating time to work on this gem.
