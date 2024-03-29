#
# Author:: Joshua Timberman <joshua@opscode.com>
# Author:: Daniel DeLeo <dan@kallistec.com>
# Cookbook Name:: rails_demo
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
# Copyright 2009, Daniel DeLeo
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

appname = "rails_demo"

include_recipe "sqlite"
include_recipe "apache2"
include_recipe "apache2::mod_rewrite"
include_recipe "passenger_apache2::mod_rails"

gem_package "rake" do
  version "0.9.2"
end

group "railsdev"

user "railsdev" do
  group "railsdev"
end

directory "/srv/#{appname}/current/" do
  recursive true
  owner "railsdev"
  group "railsdev"
  mode "0775"
end

web_app "#{appname}" do
  docroot "/srv/#{appname}/current/public"
  template "#{appname}.conf.erb"
  server_name "#{appname}.#{node[:domain]}"
  server_aliases [ "#{appname}", node[:hostname] ]
  rails_env node['rails_demo']['environment']
end
