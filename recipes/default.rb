#
# Cookbook Name:: hadoop_mapr
# Recipe:: default
#
# Copyright © 2013-2015 Cask Data, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'hadoop_mapr::repo'
include_recipe 'hadoop_mapr::_system_tuning'

if node['hadoop_mapr']['create_mapr_user'].to_s == 'true'
  # create 'mapr' group
  group 'mapr' do
    gid node['hadoop_mapr']['mapr_user']['gid']
    action :create
  end

  # create 'mapr' user
  user 'mapr' do
    uid node['hadoop_mapr']['mapr_user']['uid']
    gid node['hadoop_mapr']['mapr_user']['gid']
    action :create
  end
end