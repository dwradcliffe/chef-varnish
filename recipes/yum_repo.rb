#
# Cookbook Name:: varnish
# Recipe:: yum_repo
#
# Copyright 2013, David Radcliffe
#

# See: https://www.varnish-cache.org/installation/redhat

execute "install varnish yum repo" do
  command "rpm --nosignature -i http://repo.varnish-cache.org/redhat/varnish-3.0/el5/noarch/varnish-release-3.0-1.noarch.rpm"
  creates "/etc/yum.repos.d/varnish.repo"
  action :run
  notifies :run, "execute[yum_clean_all]", :immediately
end

execute "yum_clean_all" do
  command "yum clean all"
  action :nothing
end
