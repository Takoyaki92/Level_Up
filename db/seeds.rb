require "open-uri"

Milestone.destroy_all
StudySession.destroy_all
Skill.destroy_all
User.destroy_all

puts "Database cleared!"
# Users
puts "Creating users..."
cardi_b = User.create(first_name: "Belcalis", last_name: "Alamanzar", username: "cardi_b92", email: "cardib_92@gmail.com", password: "123456")
cardi_b_file = URI.open("https://www.okayplayer.com/wp-content/uploads/2020/08/watch-cardi-b-and-joe-biden-talk-police-brutality-covid-19-and-more-over-zoom-1-1280x720.jpg")
cardi_b.photo.attach(io: cardi_b_file, filename: 'watch-cardi-b-and-joe-biden-talk-police-brutality-covid-19-and-more-over-zoom-1-1280x720.jpg', content_type: 'image/jpg')

laura_croft = User.create(first_name: "Laura", last_name: "Croft", username: "TombRaider97", email: "tombraider97@gmail.com", password: "123456")
laura_croft_file = URI.open("https://a.scpr.org/i/74e7d5b34b2e4f832675e454b91a6528/117059-full.jpg")
laura_croft.photo.attach(io: laura_croft_file, filename: '117059-full.jpg', content_type: 'image/jpg')

mario = User.create(first_name: "Mario", last_name: "Lopez", username: "SuperMario85", email: "supermario85@gmail.com", password: "123456")
mario_file = URI.open("https://pagesix.com/wp-content/uploads/sites/3/2018/07/mario-lopez.jpg?quality=80&strip=all")
mario.photo.attach(io: mario_file, filename: 'mario-lopez.jpg', content_type: 'image/jpg')

link = User.create(first_name: "Link", last_name: "Hyrule", username: "Triforce86", email: "triforce86@gmail.com", password: "123456")
link_file = URI.open("https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
link.photo.attach(io: link_file, filename: 'pexels-photo-2379004.jpeg', content_type: 'image/jpeg')

marguerite = User.create(first_name: "Marguerite", last_name: "Baker", username: "Bayoubae", email: "bayoubae@gmail.com", password: "123456")
marguerite_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614911887/pexels-misha-voguel-4407897_ujtfwl.jpg")
marguerite.photo.attach(io: marguerite_file, filename: 'pexels-misha-voguel-4407897_ujtfwl.jpg', content_type: 'image/jpg')
puts "users created!"

# Skills
puts "Creating skills..."
american_history = Skill.new(name:"History")
american_history.user = cardi_b
american_history.save!
archaeology = Skill.new(name: "Archaeology")
archaeology.user = laura_croft
archaeology.save!
plumbing = Skill.new(name: "Plumbing")
plumbing.user = mario
plumbing.save!
archery = Skill.new(name: "Archery")
archery.user = link
archery.save!
cooking = Skill.new(name: "Cooking")
cooking.user = marguerite
cooking.save!
puts "Skills created!"

# Milestones
puts "Creating milestones..."
presentation = Milestone.new(goal:"make an online video about the American Civil War")
presentation.skill = american_history
presentation.save!
report = Milestone.new(goal: "Visit the Pyramids of Giza and publish a journal article")
report.skill = archaeology
report.save!
sink = Milestone.new(goal: "Fix a minor sink leak")
sink.skill = plumbing
sink.save!
target = Milestone.new(goal: "Hit a large target")
target.skill = archery
target.save!
cake = Milestone.new(goal: "Bake a simple vanilla sponge cake")
cake.skill = cooking
cake.save!
puts "Milestones created!"

# Study Sessions
puts "Creating study sessions..."
primary = StudySession.new(goal: "a", description: "Looked up primary sources about Civil War")
primary_file = URI.open("https://images.pexels.com/photos/1112048/pexels-photo-1112048.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")
primary.photo.attach(io: primary_file, filename: 'pexels-photo-1112048.jpeg', content_type: 'image/jpeg')
primary.skill = american_history
primary.save!

museum = StudySession.new(goal: "a", description: "Went to a museum and took pictures of Tomb samples")
museum_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614910059/egypt_tombs_dgyeug.jpg")
museum.photo.attach(io: museum_file, filename: 'egypt_tombs_dgyeug.jpg', content_type: 'image/jpg')
museum.skill = archaeology
museum.save!

tutorial = StudySession.new(goal: "a", description: "Watched a tuorial video and took notes")
tutorial_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614910302/plumbing_dyadvj.jpg")
tutorial.photo.attach(io: tutorial_file, filename: 'plumbing_dyadvj.jpg', content_type: 'image/jpg' )
tutorial.skill = plumbing
tutorial.save!

bow = StudySession.new(goal: "a", description: "Shot 10 arrows with my bow")
bow_file = URI.open("https://images.pexels.com/photos/6669391/pexels-photo-6669391.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
bow.photo.attach(io: bow_file, filename: 'pexels-photo-6669391.jpeg', content_type: 'image/jpeg')
bow.skill = archery
bow.save!

pancake = StudySession.new(goal: "a", description: "Made one simple pancake")
pancake_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614251680/vnhimvgmbo4aivtv2hutsqzvbfx8.jpg")
pancake.photo.attach(io: pancake_file, filename: 'vnhimvgmbo4aivtv2hutsqzvbfx8.jpg', content_type: 'image/jpg')
pancake.skill = cooking
pancake.save!

puts "Study Sessions created!"
