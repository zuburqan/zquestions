# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    # encrypted_password { '$2a$12$QrSfvK0cYj9Vu3XFEdOcheYjOtu739PYf0fvdsDgcMitWwXg6yePy' }
  end
end
