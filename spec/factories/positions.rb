FactoryBot.define do
  factory :position do
    company { nil }
    title { Faker::Job.title }
    description { Faker::Markdown.random }
    end_reason { Faker::Lorem.sentence }
    always_show { false }
    start_date { DateTime.now - 1.year }
    end_date { start_date + 1.year }
  end
end
