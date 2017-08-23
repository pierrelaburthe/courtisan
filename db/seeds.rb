puts 'destroying classes'
classes = [User, Challenge, Message]
classes.each do |c|
  c.destroy_all
end

puts 'creating new classes'



seduced1 = User.new(status: "se faire courtiser", first_name: "Valentine", last_name: "Dupont", age: 22, gender: "Femme", email: "valentine@gmail.com", password: "valentine", i_am: "étudiante en droit", i_like: "planche à voile", i_look_for: "partenaire de voyage")
seduced1.save!

jean_seducer = User.new(status: "courtiser", first_name: "Jean", last_name: "Chibre", age: 24, gender: "Homme", email: "jean@gmail.com", password: "jeanchibre", i_am: "étudiante en code", i_like: "bière", i_look_for: "amie")
jean_seducer.save!

thomas_seducer = User.new(status: "courtiser", first_name: "Thomas", last_name: "Martin", age: 22, gender: "Homme", email: "thomas@gmail.com", password: "thomas", i_am: "étudiante en maths", i_like: "planche à repasser", i_look_for: "partenaire de camping")
thomas_seducer.save!

