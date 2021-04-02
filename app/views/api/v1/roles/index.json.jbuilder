json.array! @roles do |role|
  json.data do
    json.role do
      json.id role.id
      json.name role.name
    end
  end
end