class Profile < ActiveRecord::Base
belongs_to :place
has_many :uploads

validates :place, presence: true
has_attached_file :image, :styles => { large: "600x400",:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def at_place
    "#{place.area_name}, #{place.s_district}, #{place.district_name} #{place.state_name}"
  end
end
