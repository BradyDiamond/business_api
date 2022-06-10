
FactoryBot.define do
  factory(:business) do
    name {Faker::Restaurant.name }
    location {Faker::Address.full_address}
  end
end

