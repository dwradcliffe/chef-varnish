#
# Cookbook Name:: varnish
# Recipe:: server
#
# Copyright 2013, David Radcliffe
#

case node['platform_family']
when 'rhel', 'fedora'
  major_varnish_version = node['varnish']['version'].split('.')[0]
  include_recipe 'yum::epel' if major_varnish_version == '2'
  include_recipe 'varnish::yum_repo' if major_varnish_version == '3'
end

package 'varnish' do
  version node['varnish']['version']
end
