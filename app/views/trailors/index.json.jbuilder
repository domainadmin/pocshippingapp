json.array!(@trailors) do |trailor|
  json.extract! trailor, :id, :trailorno, :truckno, :containerno, :datetimeval, :exportcoff
  json.url trailor_url(trailor, format: :json)
end
