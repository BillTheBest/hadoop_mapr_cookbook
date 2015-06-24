name             'hadoop_mapr'
maintainer       'Cask Data, Inc.'
maintainer_email 'ops@cask.co'
license          'Apache 2.0'
description      'Installs/Configures the MapR Distribution for Apache Hadoop'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum', '>= 3.0'

 %w(apt).each do |cb|
   depends cb
 end

# %w(apt selinux sysctl ulimit).each do |cb|
#   depends cb
# end

recommends 'java', '~> 1.21'

%w(amazon centos debian redhat scientific ubuntu).each do |os|
  supports os
end

# %w(hadoop_cluster hadoop_cluster_rpm hadoop_for_hbase hbase hbase_cluster hive pig spark tez zookeeper zookeeper_cluster).each do |cb|
#   conflicts cb
# end
