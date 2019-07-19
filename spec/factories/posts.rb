FactoryBot.define do
  factory :post do
    title { "MyString" }
    text { "MyText" }
    category { "MyString" }
    association :user
  end
end