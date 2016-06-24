class SubDistrict < ActiveRecord::Base
  belongs_to :district
  has_many :places
end
