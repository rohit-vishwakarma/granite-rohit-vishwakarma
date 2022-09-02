# frozen_string_literal: true

FactoryBot.define do
  factory :comments do
    content { "MyText" }
    task { nil }
    user { nil }
  end
end
