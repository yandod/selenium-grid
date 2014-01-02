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

service "selenium-grid" do
  start_command "java -jar #{Chef::Config[:file_cache_path]}/selenium-server-standalone-2.33.0.jar"
  stop_command "pkill -f 'java -jar'"
  action :start
end
