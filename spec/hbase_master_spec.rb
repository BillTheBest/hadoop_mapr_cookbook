require 'spec_helper'

describe 'hadoop_mapr::hbase_master' do
  context 'on Centos 6.6' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: 6.6).converge(described_recipe)
    end

    it 'installs mapr-hbase-master package' do
      expect(chef_run).to install_package('mapr-hbase-master')
    end
  end
end

