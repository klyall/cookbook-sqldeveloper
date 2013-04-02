Description
===========
Downloads and installs SQL Developer from the specified URL. 

The URL must be provided as the Zip file cannot be downloaded from the Oracle website. 

Requirements
============
The following cookbooks are dependencies:

* java
* ark


Attributes
==========
* node['sqldeveloper']['version'] defaults to "3.2.20.09.87". Update to match the downloaded version of SQL Developer.
* node['sqldeveloper']['zip'] defaults to "sqldeveloper-#{node['sqldeveloper']['version']}-no-jre.zip"
* node['sqldeveloper']['url'] set to location of the Zip file you have previously downloaded.

Usage
=====
Simply include the recipe where you want SQL Developer installed.

Examples
--------
    include_recipe 'sqldeveloper'
  
Testing
=======
The recipe has been tested using Test-Kitchen.

To test the recipe:

    bundle install
    
    bundle exec kitchen test