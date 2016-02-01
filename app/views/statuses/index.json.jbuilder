json.array!(@statuses) do |status|
  json.extract! status, :id, :tokeno, :exrelno, :contno, :custno, :delito, :type, :size, :custinc, :weight, :tollcharge, :tokencharge, :detcharge, :triprent, :triptotamt, :drivname, :driverbata, :wghmntbata, :custbata, :pocdrivbata
  json.url status_url(status, format: :json)
end
