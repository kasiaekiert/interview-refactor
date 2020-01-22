require 'faker'

10.times do
  tv_show = TvShow.create(
    title: Faker::Job.title,
    description: Faker::Lorem.paragraph(2),
    rank: Faker::Number.between(1,5)
  )

  Episode.create(
    title: Faker::Job.title,
    episode: Faker::Number.between(1, 15),
    tv_show_id: tv_show.id)
end