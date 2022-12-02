# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'foo@example.com' }
    password { 'foobar' }
    encrypted_password { '$2a$12$QrSfvK0cYj9Vu3XFEdOcheYjOtu739PYf0fvdsDgcMitWwXg6yePy' }
  end
end
