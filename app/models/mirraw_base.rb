require 'active_record'

class MirrawBase < ActiveRecord::Base
  self.abstract_class = true
  database = if Rails.env == 'production'
               'LIVE_MIRRAW'
             elsif  Rails.env == 'development'
               'STAGING'
             end

  establish_connection(
    adapter:  "postgresql",
    host:     ENV["#{database}_HOST"],
    port:     ENV["#{database}_PORT"],
    username: ENV["#{database}_USERNAME"],
    password: ENV["#{database}_PASSWORD"],
    database: ENV["#{database}_DATABASE"]
  ).connection
end