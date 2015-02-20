class Attraction < ActiveRecord::Base
  belongs_to :city
  has_many :specifics
end
