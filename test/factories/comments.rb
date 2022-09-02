# # frozen_string_literal: true

# FactoryBot.define do
#   factory :comments do
#     content { "MyText" }
#     task { nil }
#     user { nil }
#   end
# end

# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.paragraph }
    task
    user
  end
end
