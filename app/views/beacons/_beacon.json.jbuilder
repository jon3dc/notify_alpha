# json.extract! beacon, :id, :name, :description, :enter_text, :exit_text, :major_id, :minor_id, :account_id, :created_at, :updated_at
# json.url beacon_url(beacon, format: :json)


json.array!(@beacons) do |beacon|

  json.extract! beacon, :id
  json.name beacon.name
  json.description beacon.description
  json.account beacon.account
  json.major beacon.major
  json.minor beacon.minor
 
end