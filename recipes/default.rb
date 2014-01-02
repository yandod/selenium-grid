#
# Cookbook Name:: selenium-grid
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# if doesn't already exist, get https://selenium.googlecode.com/files/selenium-server-standalone-2.33.0.jar

include_recipe 'selenium-grid::install'

# ensure port 4444 is accessible
# ensure that java is installed