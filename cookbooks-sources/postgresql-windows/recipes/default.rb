#
# Cookbook Name:: postgresql-windows
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_package "postgresql" do
  source "http://get.enterprisedb.com/postgresql/postgresql-9.1.4-1-windows-x64.exe"
  action :install
end
