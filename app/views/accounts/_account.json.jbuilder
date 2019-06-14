#json.extract! account, :id, :name, :description, :created_at, :updated_at
#json.url account_url(account, format: :json)

json.extract! account
json.name account.name
json.url account_url(account, format: :json)
json.description account.description

json.beacons account.beacons do |beacon|
  	json.name beacon.name
	json.url beacon_url(beacon, format: :json)
	json.description beacon.description
	json.major_id beacon.major.major_id
	json.minor_id beacon.minor_id
	json.enter_text beacon.enter_text
	json.exit_text beacon.exit_text
end