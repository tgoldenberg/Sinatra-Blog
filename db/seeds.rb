require 'faker'

HIPSTER_WORDS = [
    "etsy", "twee", "hoodie", "Banksy", "retro", "synth", "single-origin coffee",
    "art", "party", "cliche", "artisan", "Williamsburg", "squid",
    "helvetica", "keytar", "American Apparel", "craft beer", "food truck",
    "you probably haven't heard of them", "cardigan", "aesthetic", "raw denim",
    "sartorial", "gentrify", "lomo", "vice", "Pitchfork", "Austin",
    "sustainable", "salvia", "organic", "thundercats", "PBR", "iPhone",
    "lo-fi", "skateboard", "jean shorts", "next level", "beard", "tattooed",
    "trust fund", "Four Loko", "master cleanse", "ethical", "high life",
    "wolf", "moon", "fanny pack", "Rerry Richardson", "8-bit", "Carles",
    "Shoreditch", "seitan", "freegan", "keffiyeh", "biodiesel", "quinoa",
    "farm-to-table", "fixie", "viral", "chambray", "scenester", "leggings",
    "readymade", "Brooklyn", "Wayfarers", "Marfa", "put a bird on it",
    "dreamcatcher", "photo booth", "tofu", "mlkshk", "vegan", "vinyl", "DIY",
    "banh mi", "bicycle rights", "before they sold out", "gluten-free", "yr",
    "butcher", "blog", "whatever", "+1", "Cosby Sweater", "VHS", "messenger bag",
    "cred", "locavore", "mustache", "tumblr", "Portland", "mixtape", "fap",
    "letterpress", "McSweeney's", "stumptown", "brunch", "Wes Anderson",
    "irony", "echo park"
  ]

def word
  HIPSTER_WORDS.shuffle.first
end

def words(num = 3)
  HIPSTER_WORDS.shuffle.first(20).join(" ")
end

10.times do
  User.create(username: Faker::Name.name, password: 'password')
end

User.all.each do |user|
  5.times do
    Post.create(title: word, body: words, user_id: user.id)
  end
end

User.all.each do |user|
  Post.all.each do |post|
    Comment.create(user_id: user.id, post_id: post.id, body: HIPSTER_WORDS.shuffle.first(5).join(" "))
  end
end

