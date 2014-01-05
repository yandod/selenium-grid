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

service "xvfb" do
	start_command "/usr/bin/Xvfb :1 -screen 0 1024x768x8 > /tmp/xvfb.log 2> /tmp/xvfb.error &"
	stop_command "pkill -f 'Xvfb'"
	action :start
end

service "selenium-grid" do
  start_command "export DISPLAY=:1.0 && java -jar #{Chef::Config[:file_cache_path]}/selenium-server-standalone-2.39.0.jar > /tmp/selenium.log 2> /tmp/selenium.error &"
  stop_command "pkill -f 'java -jar'"
  action :start
end
