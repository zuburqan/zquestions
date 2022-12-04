# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    title { Faker::Games::HalfLife.character }
    body { Faker::Games::HalfLife.location }
    votes { Faker::Number.number(digits: 2) }
  end
end
