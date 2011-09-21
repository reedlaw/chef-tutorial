#
# Cookbook Name:: rails_demo
# Attributes:: rails_demo
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

default['rails_demo']['branch']          = "HEAD"
default['rails_demo']['migrate']         = false
default['rails_demo']['migrate_command'] = "rake db:migrate"
default['rails_demo']['revision']     = "HEAD"
default['rails_demo']['action']       = "nothing"
default['rails_demo']['edge']         = false
default['rails_demo']['environment']  = chef_environment =~ /_default/ ? "production" : chef_environment

