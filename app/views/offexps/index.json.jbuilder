json.array!(@offexps) do |offexp|
  json.extract! offexp, :id, :offurn, :ofstat, :offpp, :offtbill, :offintbill, :offroomrent, :offrent, :offren, :offspfee, :offstfsal, :offstvimed
  json.url offexp_url(offexp, format: :json)
end
