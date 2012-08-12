namespace :postfix do
  desc "Install postfix"
  task :install, roles: :web do
    run "#{sudo} yum install -y telnet postfix"
  end
  after "deploy:install", "postfix:install"
end