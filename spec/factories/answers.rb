# frozen_string_literal: true

FactoryBot.define do
  factory :answer do
    body { Faker::Games::HalfLife.location }
    votes { Faker::Number.number(digits: 2) }
  end
end
