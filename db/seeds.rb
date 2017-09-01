puts 'destroying classes'
classes = [Challenge, Message, WaitingList, User]
classes.each do |c|
  c.destroy_all
end

puts 'creating new classes'



seduced1 = User.new(status: "se faire courtiser", first_name: "Valentine", last_name: "Dupont", age: 22, gender: "Femme", email: "valentine@gmail.com", password: "valentine", i_am: "étudiante en histoire", i_like: "le sport et les aventures", i_look_for: "un mec marrant", attracted_by:"Homme")
seduced1.save!

jean_seducer = User.new(status: "courtiser", first_name: "Jean", last_name: "Chibre", age: 24, gender: "Homme", email: "jean@gmail.com", password: "jeanchibre", i_am: "Full-stack developper", i_like: "J'aime ma ville, Ruby on Rails ", i_look_for: "Une histoire passionnelle", attracted_by:"Femme")
jean_seducer.save!

thomas_seducer = User.new(status: "courtiser", first_name: "Thomas", last_name: "Martin", age: 22, gender: "Homme", email: "thomas@gmail.com", password: "thomas", i_am: "étudiante en maths", i_like: "planche à repasser", i_look_for: "partenaire de camping", attracted_by:"Femme")
thomas_seducer.save!

