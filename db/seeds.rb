puts 'destroying classes'
classes = [User, Challenge, Message]
classes.each do |c|
  c.destroy_all
end

puts 'creating new classes'



seduced1 = User.new(status: "se faire courtiser", first_name: "Valentine", last_name: "Dupont", age: 22, gender: "female", email: "valentine@gmail.com", password: "valentine", i_am: "étudiante en droit", i_like: "planche à voile", i_look_for: "partenaire de voyage")
seduced1.save!

