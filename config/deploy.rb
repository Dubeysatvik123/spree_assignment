lock '~> 3.18'

set :application,   'spree_assignment'
set :repo_url,      'git@github.com:Dubeysatvik123/spree_assignment.git'
set :deploy_to,     '/var/www/spree'
set :branch,        'master'

set :rbenv_type,    :user
set :rbenv_ruby,    '3.2.2'
set :rbenv_path,    '/home/deploy/.rbenv'

set :linked_files, %w[
  config/database.yml
  config/master.key
]

set :linked_dirs, %w[
  log
  tmp/pids
  tmp/cache
  tmp/sockets
  public/system
  public/uploads
  storage
]

set :keep_releases, 5
set :rails_env,     'production'

set :puma_bind,       "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.access.log"
set :puma_error_log,  "#{release_path}/log/puma.error.log"
set :puma_systemctl_user, :system
set :puma_enable_socket_service, true
# After bundler:install, run yarn install
before 'deploy:assets:precompile', 'deploy:yarn_install'

namespace :deploy do
  task :yarn_install do
    on roles(:web) do
      within release_path do
        execute :yarn, 'install', '--frozen-lockfile'
      end
    end
  end
end

# Skip yarn install - using importmap, not webpack


# Disable asset precompile
after 'bundler:install', 'deploy:assets:precompile' do
  # skip
end
Capistrano::DSL.stages

set :assets_roles, [] # Skip asset precompile
