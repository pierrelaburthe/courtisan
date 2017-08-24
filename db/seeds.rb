puts 'destroying classes'
classes = [User, Challenge, Message]
classes.each do |c|
  c.destroy_all
end

puts 'creating new classes'



seduced1 = User.new(status: "se faire courtiser", first_name: "Valentine", last_name: "Dupont", age: 22, gender: "Femme", email: "valentine@gmail.com", password: "valentine", i_am: "étudiante en droit", i_like: "planche à voile", i_look_for: "partenaire de voyage", attracted_by:"Homme")
seduced1.save!

seduced2 = User.new(status: "se faire courtiser", first_name: "Emma", last_name: "Duchemin", age: 22, gender: "Femme", email: "emma@gmail.com", password: "emmaaa", i_am: "étudiante en droit", i_like: "athlétisme", i_look_for: "copain", attracted_by:"Homme")
seduced2.save!

seduced3 = User.new(status: "se faire courtiser", first_name: "Manon", last_name: "Lacrampe", age: 22, gender: "Femme", email: "manon@gmail.com", password: "manonn", i_am: "étudiante en droit", i_like: "voyages", i_look_for: "mari riche", attracted_by:"Homme")
seduced3.save!

seduced4 = User.new(status: "se faire courtiser", first_name: "Laura", last_name: "Chateau", age: 22, gender: "Femme", email: "laura@gmail.com", password: "lauraa", i_am: "étudiante en droit", i_like: "lecture", i_look_for: "partenaire de lecture", attracted_by:"Homme")
seduced4.save!

seduced5 = User.new(status: "se faire courtiser", first_name: "Diane", last_name: "Picot", age: 22, gender: "Femme", email: "diane@gmail.com", password: "dianee", i_am: "étudiante en droit", i_like: "boxe", i_look_for: "prince charmant", attracted_by:"Homme")
seduced5.save!

seduced6 = User.new(status: "se faire courtiser", first_name: "Léa", last_name: "Carroussel", age: 22, gender: "Femme", email: "lea@gmail.com", password: "lealea", i_am: "étudiante en droit", i_like: "jeux vidéos", i_look_for: "aventurier", attracted_by:"Homme")
seduced6.save!

jean_seducer = User.new(status: "courtiser", first_name: "Jean", last_name: "Chibre", age: 24, gender: "Homme", email: "jean@gmail.com", password: "jeanchibre", i_am: "étudiante en code", i_like: "bière", i_look_for: "amie", attracted_by:"Femme")
jean_seducer.save!

thomas_seducer = User.new(status: "courtiser", first_name: "Thomas", last_name: "Martin", age: 22, gender: "Homme", email: "thomas@gmail.com", password: "thomas", i_am: "étudiante en maths", i_like: "planche à repasser", i_look_for: "partenaire de camping", attracted_by:"Femme")
thomas_seducer.save!

