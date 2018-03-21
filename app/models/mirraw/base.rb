require 'active_record'

class Mirraw::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "mirraw_development".to_sym
end