FactoryGirl.define do

  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password 'password'
  end

  factory(:venue) do
    name ('example venue')
    description ('example description')
    address ('example address')
  end

  factory(:act) do
    name ('example venue')
    description ('example description')
    website('example website')
    image ('example image')
    genre ('example genre')
  end
end
