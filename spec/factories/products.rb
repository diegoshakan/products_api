FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    quantity { 1 }
    price { "9.99" }
    category { nil }
  end
end
