FactoryGirl.define do
  factory :user do
    email      { Forgery('email').address }
    first_name { Forgery('name').first_name }
    last_name  { Forgery('name').last_name }
    password   'Password1'
  end
end
