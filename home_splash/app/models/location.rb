class Location < ActiveRecord::Base
  belongs_to :user

  validates :zip, presence: true, length: {minumum: 5}
end
