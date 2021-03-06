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

# SEEDS FOR PLUMBING

# Story number 1
tutorial = StudySession.new(goal: "a", description: "Watched a tuorial video and took notes on how to fix my kitchen sink that is leaking.")
tutorial_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614910302/plumbing_dyadvj.jpg")
tutorial.photo.attach(io: tutorial_file, filename: 'plumbing_dyadvj.jpg', content_type: 'image/jpg' )
tutorial.skill = plumbing
tutorial.save!

# Story number 2
tutorial = StudySession.new(goal: "a", description: "Tried to use the information from the tutorial I watched, while using my Monkey wrench, I stripped the bolt accidently and made a bigger mess. If anyone knows how to fix a sink, please let me know.")
tutorial_file = URI.open("https://www.rosenthalplumbing.com/wp-content/uploads/2020/02/93741141_s-1.jpg")
tutorial.photo.attach(io: tutorial_file, filename: '93741141_s-1.jpg', content_type: 'image/jpg' )
tutorial.skill = plumbing
tutorial.save!

# Story number 3
tutorial = StudySession.new(goal: "a", description: "I was able to replace the bolt, and tighten it, stopping the leak, YAY!!!! I feel very accomplished in fixing leaks now!! ")
tutorial_file = URI.open("https://s3-us-west-1.amazonaws.com/contentlab.studiod/getty/e85e099b64e24b24b72883ec40dfa09b.jpg")
tutorial.photo.attach(io: tutorial_file, filename: 'e85e099b64e24b24b72883ec40dfa09b.jpg', content_type: 'image/jpg' )
tutorial.skill = plumbing
tutorial.save!

# END OF SEEDS FOR PLUMBING

# SEEDS FOR ARCHERY

# Story number 1
bow = StudySession.new(goal: "a", description: "I wanted to hit the Target 10 times, but it was difficult, but am Happy I was able to hit the target at all.")
bow_file = URI.open("https://i.pinimg.com/originals/5d/59/4a/5d594a1251a52fad472d588bacd3060b.jpg")
bow.photo.attach(io: bow_file, filename: '5d594a1251a52fad472d588bacd3060b.jpg', content_type: 'image/jpeg')
bow.skill = archery
bow.save!


# Story number 2
bow = StudySession.new(goal: "a", description: "I was able to hit the target 10 times, but I only came close to the bullseye one time, still can`t quite hit it though.")
bow_file = URI.open("https://share.upmc.com/wp-content/uploads/2016/10/102016_ARCHERY.jpg")
bow.photo.attach(io: bow_file, filename: '102016_ARCHERY.jpg', content_type: 'image/jpeg')
bow.skill = archery
bow.save!

# Story number 3
bow = StudySession.new(goal: "a", description: "I was able to hit the bullseye 1 time out of 3, I feel good, it is nice to see improvement.")
bow_file = URI.open("https://i0.wp.com/firstsportz.com/wp-content/uploads/2019/11/arch.jpg")
bow.photo.attach(io: bow_file, filename: 'arch.jpg', content_type: 'image/jpeg')
bow.skill = archery
bow.save!

# END OF SEEDS FOR ARCHERY

pancake = StudySession.new(goal: "a", description: "Made one simple pancake")
pancake_file = URI.open("https://res.cloudinary.com/glenn88/image/upload/v1614251680/vnhimvgmbo4aivtv2hutsqzvbfx8.jpg")
pancake.photo.attach(io: pancake_file, filename: 'vnhimvgmbo4aivtv2hutsqzvbfx8.jpg', content_type: 'image/jpg')
pancake.skill = cooking
pancake.save!

puts "Study Sessions created!"
