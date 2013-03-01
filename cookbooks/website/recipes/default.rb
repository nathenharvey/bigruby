#
# Cookbook Name:: website
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2"

template "/var/www/index.html" do
  owner "www-data"
  group "www-data"
  mode  644
  source "index.html.erb"
end

service "apache2" do
  action [:start, :enable]
end
