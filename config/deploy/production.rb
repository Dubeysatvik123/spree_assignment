server '18.233.151.45', user: 'deploy', roles: %w[web app db]

set :ssh_options, {
  keys: [File.expand_path('~/Downloads/spree.pem')],
  forward_agent: false,
  auth_methods: %w[publickey]
}
