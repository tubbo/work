#
# Cookbook Name:: work
# Recipe:: default
#
# Installs system packages, the main user, and home directory
# configuration.
#
# Copyright (C) 2015 Tom Scott

include_recipe 'chef-dk'
include_recipe 'mac_os_x::key_repeat'
include_recipe 'mac_os_x::kbaccess'
include_recipe 'mac_os_x::time_machine'
include_recipe 'mac_os_x::settings'
include_recipe 'work::_command_line_tools'
include_recipe 'work::_applications'
include_recipe 'work::_user_configuration'
include_recipe 'work::_ruby_environment'

mac_os_x_plist_file 'com.googlecode.iterm2.plist'
