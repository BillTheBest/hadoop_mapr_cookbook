#
# Cookbook Name:: hadoop_mapr
# Attribute:: default
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

# Java
default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = 7
default['java']['oracle']['accept_oracle_download_terms'] = true

# MapR version to install
default['hadoop_mapr']['distribution_version'] = '4.1.0'

# MapR base install dir. Changing this results in a symlink from /opt/mapr to the new location
default['hadoop_mapr']['install_dir'] = '/opt/mapr'

# MapR requires the 'mapr' user and group with a consistent uid/gid across the cluster
# Create MapR user if enabled (otherwise delegates to packages)
default['hadoop_mapr']['create_mapr_user'] = true
default['hadoop_mapr']['mapr_user']['uid'] = 5000
default['hadoop_mapr']['mapr_user']['gid'] = 5000

# list of data disks
default['hadoop_mapr']['disk_list'] = [ nil ]

# Default/common options for configure.sh
default['hadoop_mapr']['configure_sh']['cluster_name'] = 'my.chef.cluster.com'
default['hadoop_mapr']['configure_sh']['cldb_list'] = node['fqdn']
default['hadoop_mapr']['configure_sh']['cldb_mh_list'] = nil
default['hadoop_mapr']['configure_sh']['zookeeper_list'] = node['fqdn']
default['hadoop_mapr']['configure_sh']['refresh_roles'] = false
default['hadoop_mapr']['configure_sh']['client_only_mode'] = false
