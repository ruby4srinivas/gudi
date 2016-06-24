class District < ActiveRecord::Base
  belongs_to :state
  has_many :sub_districts
end
