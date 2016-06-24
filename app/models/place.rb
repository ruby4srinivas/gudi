class Place < ActiveRecord::Base
  has_one :profile
  #belongs_to :sub_district

def self.states
  self.select(:mdds_stc,:state_name).group(:state_name)
end

  def self.districts(state_id)
    self.where('mdds_stc =? and mdds_dtc != 0', state_id).select(:mdds_dtc,:district_name).group(:district_name)
  end
  def self.sdistricts(district_id)
    self.where('mdds_dtc =? and mdds_sub != 0', district_id).select(:mdds_sub,:s_district).group(:s_district).order(:s_district)
  end
  def self.villages(sub_district_id)
    self.where('mdds_sub =? and mdds_plcn != 0', sub_district_id).select(:id,:area_name).group(:area_name).order(:area_name)
  end
end
