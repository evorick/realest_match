json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :first_name, :last_name, :phone_number, :email, :number_bedrooms, :number_bathrooms, :city, :state, :min_price, :max_price
  json.url buyer_url(buyer, format: :json)
end
