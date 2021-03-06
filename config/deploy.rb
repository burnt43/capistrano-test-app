# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'capistrano-test-app'
set :repo_url,    'git@github.com:burnt43/capistrano-test-app.git'
set :branch,      'master'
set :deploy_to,   '/home/jcarson/tmp/capistrano-test-app'
set :default_env, { path: "/home/jcarson/ruby-2.3.3/bin/:$PATH" }

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  namespace :assets do
    task :precompile do
      on roles(fetch(:assets_roles)) do
        within release_path.join(fetch(:rails_app_dir)) do
          with rails_env: fetch(:rails_env) do
            execute :rake, 'foobar'
          end
        end
      end
    end
  end

  after :publishing, 'assets:precompile'
end
