json.array!(@listers) do |lister|
  json.extract! lister, :id, :first_name, :last_name, :phone_number, :email, :number_bedrooms, :number_bathrooms, :city, :state, :price
  json.url lister_url(lister, format: :json)
end
