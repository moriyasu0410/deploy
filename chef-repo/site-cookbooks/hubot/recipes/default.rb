#
# Cookbook Name:: hubot
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{nodejs npm}.each do |p|
  package p do
    action :install
      options "--enablerepo=epel"
    end
end

%w{redis}.each do |p|
  package p do
    action :install
      options "--enablerepo=remi"
    end
end

%w{yo generator-hubot}.each do |p|
  execute p do
    command 'npm install -g ' + p
  end
end