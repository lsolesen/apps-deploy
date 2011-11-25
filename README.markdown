Drupal Open Apps Server
==

This makes it possible to easily deploy an apps server

Requirements
------------

* [drush](http://drupal.org/project/drush) 
* [drush_make](http://drupal.org/project/drush_make)

Installation
------------

To build a complete site, run:

    drush make openapps.build ~/workspace/openapps
    
Then setup the following:

    cp sites/default/default.settings.php sites/default/settings.php
    chmod 777 sites/default/settings.php
    mkdir sites/default/files
    chmod 777 sites/default/files

Navigate to the root directory in a webbrowser.

#### Update existing install profile ####

If you want to update just the install profile instead of rebuilding the
entire site, you can run this:

    drush make --no-core --contrib-destination=. openapps.make

#### Rebuild everything ####

If you want to force a rebuild of everything, you can run this:

    drush si openapps
