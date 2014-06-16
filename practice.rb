def string_shuffle(s)
  s.split('').shuffle.join
end

puts string_shuffle("foobar")


class String
  def shuffle
    self.split('').shuffle.join
  end
end

person1 = {:first => "Elli", :last => "Balcomb"}

person2 = {first: "Jona", last: "Camacho"}

person3 = {:first => "Sean", last: "Knox"}

params = {:father => person1, :mother => person2, :child => person3}

puts params[:father][:first]


hash1 = {a: "hello", b: "goodbye", c: "greetings"}

hash2 = {b: "whatsup", c: "howdy", d: "different"}

hash1.merge!(hash2)

puts hash1