package 'brew-cask'

node['work']['casks'].each do |package_name|
  homebrew_cask package_name
end
