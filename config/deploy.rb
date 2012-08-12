# set :application, "set your application name here"
# set :repository,  "set your repository location here"
# 
# set :scm, :subversion
# # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
# 
# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"
# 
# # if you want to clean up old releases on each deploy uncomment this:
# # after "deploy:restart", "deploy:cleanup"
# 
# # if you're still using the script/reaper helper you will need
# # these http://github.com/rails/irs_process_scripts
# 
# # If you are using Passenger mod_rails uncomment this:
# # namespace :deploy do
# #   task :start do ; end
# #   task :stop do ; end
# #   task :restart, :roles => :app, :except => { :no_release => true } do
# #     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
# #   end
# # end

require "bundler/capistrano"

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
# load "config/recipes/postgresql"
load "config/recipes/nodejs"
load "config/recipes/postfix"
# load "config/recipes/rbenv"
load "config/recipes/check"

server "108.174.51.158", :web, :app, :db, primary: true

set :user, "deployer"
set :application, "zombie_twitter"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
# set :repository, "git@github.com:ryanb/#{application}.git"
set :repository, "cmcknight@battlekittensoftware.info:/opt/git/rorZombieTwitter.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases

task :after_update_code do
  run "cd #{deploy_to}/ && ./script/runner -e production 'AppVersion.bump_revision'"
end