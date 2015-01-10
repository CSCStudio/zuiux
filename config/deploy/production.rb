# set :stage, :production

server 'zuiux.com', user: 'deploy', roles: %w{web app db}
set :deploy_to, '/var/www/zuiux'
