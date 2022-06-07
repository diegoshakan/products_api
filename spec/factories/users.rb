FactoryBot.define do
  factory :user do
    username { "Eleven" }
    email { "eleven@example.com" }
    password { "changeme" }
    password_confirmation { "changeme" }
  end
end
