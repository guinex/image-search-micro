require 'active_record'

class ImageSearch::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "production".to_sym
end


# class ImageSearchDb < FIREBASE
#   # self.abstract_class = true
#   # establish_connection "image_search_development".to_sym
  
# end