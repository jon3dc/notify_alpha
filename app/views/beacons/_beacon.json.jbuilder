json.extract! beacon
json.name beacon.name
json.url beacon_url(beacon, format: :json)
json.description beacon.description
json.major_id beacon.major.major_id
json.minor_id beacon.minor_id
json.enter_text beacon.enter_text
json.exit_text beacon.exit_text

json.major do
	json.name beacon.major.name
  	json.url major_url(beacon.major, format: :json)
  	json.description beacon.major.description
  	json.major_id beacon.major.major_id
end

json.account do
	#json.name beacon.major.name
  	#json.url major_url(beacon.major, format: :json)
  	#json.description beacon.major.description
  	#json.major_id beacon.major.major_id
end

