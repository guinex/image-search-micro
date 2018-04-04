require 'active_record'

class ImageSearchBase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "image_search_development".to_sym
end
