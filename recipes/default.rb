#
# Cookbook Name:: work
# Recipe:: default
#
# Installs system packages, the main user, and home directory
# configuration.
#
# Copyright (C) 2015 Tom Scott

include_recipe 'chef-dk'
include_recipe 'work::_command_line_tools'
include_recipe 'work::_applications'
include_recipe 'work::_user_configuration'
include_recipe 'work::_ruby_environment'
