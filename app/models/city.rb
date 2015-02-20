class City < ActiveRecord::Base
  belongs_to :state
  has_many :attractions
  has_many :specifics, through: :attractions

  validates :city_name, presence: true
end
