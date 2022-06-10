
FactoryBot.define do
  factory(:weapon) do
    name {Faker::Restaurant.name }
    location {Faker::Address.full_address}
  end
end

