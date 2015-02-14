include_recipe 'ruby_install'

ruby_install_ruby node['work']['ruby_version'] do
  path "/opt/rubies"
end

node['work']['gems'].each do |name|
  gem_package name do
    gem_binary "/opt/rubies/ruby-#{node['work']['ruby_version']}/bin/gem"
  end
end

# NOTE: Backwards compatibility for older tools.
link "/Users/#{node['work']['username']}/.rubies" do
  to node['ruby_install']['default_ruby_base_path']
end
