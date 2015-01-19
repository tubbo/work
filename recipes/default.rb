#
# Cookbook Name:: work
# Recipe:: default
#
# Installs system packages, the main user, and home directory
# configuration.
#
# Copyright (C) 2015 Tom Scott

homebrew_tap 'tubbo/homebrew-tap'
homebrew_tap 'caskroom/homebrew-cask'

package 'brew-cask'

include_recipe 'homebrew::install_packages'
include_recipe 'git'
include_recipe 'users'
include_recipe 'chef-dk'

users_manage node['work']['username']

node['work']['casks'].each do |package_name|
  homebrew_cask package_name
end

ruby_install_ruby node['work']['ruby_version']

node['work']['gems'].each do |gem_name|
  gem_package gem_name
end

git "/Users/#{node['work']['username']}" do
  repository node['work']['config_repo']
end

git "/Users/#{node['work']['username']}/.vim/bundle/Vundle.vim" do
  repository 'https://github.com/gmarik/Vundle.vim'
end

execute 'vim +PluginInstall +qall'
