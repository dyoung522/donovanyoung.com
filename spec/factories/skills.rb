FactoryBot.define do
  factory :skill do
    name { Faker::Job.key_skill }
  end
end
