json.array!(@staffs) do |staff|
  json.extract! staff, :id, :staffname, :design, :workingdays, :salary, :allowance
  json.url staff_url(staff, format: :json)
end
