include_recipe 'users'

HOME_DIR = "/Users/#{node['work']['username']}"

users_manage node['work']['username'] do
  not_if { File.exists? "/Users/#{node['work']['username'}" }
end

package 'zsh'

execute "mv #{HOME_DIR} #{HOME_DIR}.backup"

git HOME_DIR do
  repository node['work']['config_repo']
end

git "#{HOME_DIR}/.vim/bundle/Vundle.vim" do
  repository 'https://github.com/gmarik/Vundle.vim'
end

execute 'vim +PluginInstall +qall' do
  cwd HOME_DIR
  user node['work']['username']
  group node['work']['username']
end

execute "chsh -s /usr/local/bin/zsh #{node['work']['username']}" do
  user 'root'
  group 'root'
end

execute "cp -a #{HOME_DIR}.backup/** #{HOME_DIR}" do
  ignore_failure true
end
