FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    password { 'admin112' }
  end
end
