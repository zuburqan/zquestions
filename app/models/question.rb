# frozen_string_literal: true

class Question < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true
end
