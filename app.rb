# require "digest/sha2"
# require "sinatra"
# require "sequel"

# DB = Sequel.postgres( user:'postgres',password: 'postgresql',database: 'postgres',host:'35.201.155.210')
# # get "/" do
# #   # Store a hash of the visitor's ip address
# #   visitor_ip = Digest::SHA256.hexdigest request.ip

# #   # Save visit in database
# #   DB[:visits].insert user_ip: visitor_ip, timestamp: Time.now

# #   # Retrieve the latest 10 visit records from the database
# #   visits = DB[:visits].limit(10).order Sequel.desc(:timestamp)

# #   response.write "Last 10 visits:\n"

# #   visits.each do |visit|
# #     response.write "Time: #{visit[:timestamp]} Addr: #{visit[:user_ip]}\n"
# #   end

# #   content_type "text/plain"
# #   status 200
# end