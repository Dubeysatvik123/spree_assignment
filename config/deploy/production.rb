set :ssh_options, {
  keys: %w[~/.ssh/github_actions_deploy],
  forward_agent: false,
  auth_methods: %w[publickey]
}