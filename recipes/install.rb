remote_file "#{Chef::Config[:file_cache_path]}/selenium-server-standalone-2.39.0.jar" do
  source "https://selenium.googlecode.com/files/selenium-server-standalone-2.39.0.jar"
  mode 0644
end

package 'xvfb'
package 'dbus-x11'
package 'firefox'
