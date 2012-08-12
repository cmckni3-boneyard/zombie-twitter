namespace :nodejs do
  desc "Install latest stable release of nodejs"
  task :install, roles: :web do
    run "#{sudo} wget http://nodejs.tchol.org/repocfg/el/nodejs-stable-release.noarch.rpm"
    run "#{sudo} yum localinstall --nogpgcheck nodejs-stable-release.noarch.rpm"
    run "#{sudo} yum install nodejs-compat-symlinks npm"
    run "#{sudo} rm nodejs-stable-release.noarch.rpm"
  end
  after "deploy:install", "nodejs:install"
end