json.array!(@majors) do |major|

  json.extract! major, :id
  json.name major.name
  json.description major.description
  json.account major.account
  json.minors major.minors
 
end