require 'dredd_hooks/methods'
require 'json'

include DreddHooks::Methods

stash = {}

# retrieve session on a login
after 'Auth > /auth/callback' do |transaction|
  #parsed_body = JSON.parse transaction['real']['body']
  #stash[:token] = parsed_body['sessionId']
end

# set authorization using the stashed token
before_each do |transaction|
  unless stash['token'].nil?
    transaction['request']['headers']['Authorization'] = "Bearer #{stash[:token]}"
  end
end
