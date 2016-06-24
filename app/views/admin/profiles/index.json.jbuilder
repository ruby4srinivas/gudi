json.array!(@profiles) do |profile|
  json.extract! profile, :title, :place, :city, :state, :image, :diety, :religion, :type
  json.url profile_url(profile, format: :json)
end