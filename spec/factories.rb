FactoryGirl.define do  factory :user do
    
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