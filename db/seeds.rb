require 'faker'

10.times do
  TvShow.create(
    title: Faker::Job.title,
    description: Faker::Lorem.paragraph(2),
    rank: Faker::Number.between(1,5)
  )
end