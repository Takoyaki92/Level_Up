Milestone.destroy_all
StudySession.destroy_all
Skill.destroy_all
User.destroy_all

puts "Database cleared!"
# Users
puts "Creating users..."
cardi_b = User.create(first_name: "Belcalis", last_name: "Alamanzar", username: "cardi_b92", email: "cardib_92@gmail.com", password: "123456")
laura_croft = User.create(first_name: "Laura", last_name: "Croft", username: "TombRaider97", email: "tombraider97@gmail.com", password: "123456")
mario = User.create(first_name: "Mario", last_name: "Lopez", username: "SuperMario85", email: "supermario85@gmail.com", password: "123456")
link = User.create(first_name: "Link", last_name: "Hyrule", username: "Triforce86", email: "triforce86@gmail.com", password: "123456")
marguerite = User.create(first_name: "Marguerite", last_name: "Baker", username: "Bayoubae", email: "bayoubae@gmail.com", password: "123456")
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
primary = StudySession.new(description: "look up primary sources about Civil War")
primary.skill = american_history
primary.save!
museum = StudySession.new(description: "go to a museum and take pictures of Tomb samples")
museum.skill = archaeology
museum.save!
tutorial = StudySession.new(description: "watch a tuorial video and take notes")
tutorial.skill = plumbing
tutorial.save!
bow = StudySession.new(description: "shoot 10 arrows with my bow")
bow.skill = archery
bow.save!
pancake = StudySession.new(description: "make one simple pancake")
pancake.skill = cooking
pancake.save!
puts "Study Sessions created!"
