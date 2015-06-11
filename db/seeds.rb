require 'faker'

25.times do
  Url.create(url: Faker::Internet.url)
end
