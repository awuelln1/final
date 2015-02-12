class City < ActiveRecord::Base
  has_many :attraction_names
end
