# set :stage, :production

server '54.64.184.236', user: 'deploy', roles: %w{web app db}
set :deploy_to, '/var/www/zuiux'
