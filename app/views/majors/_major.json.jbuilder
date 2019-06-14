# json.extract! major, :id, :name, :slug, :description, :major_id, :created_at, :updated_at

json.extract! major
json.name major.name
json.url major_url(major, format: :json)
json.description major.description
json.major_id major.major_id
json.beacons major.beacons