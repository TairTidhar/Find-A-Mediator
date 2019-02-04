# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
God.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

powers = ["Commercial", "Corporate", "Family Law", "Criminal", "Industrial Law"]
powers.each do |name|
	Power.create(name: name)
end


TT = User.create!(name: 'TT', email: 'TT@gmail.com', password: 'password')

Mary_Pringle = God.new(name: 'Mary Pringle', location: 'Melbourne', description: 'Gautama Buddha, also known as Siddhārtha Gautama, Shakyamuni Buddha, or simply the Buddha, after the title of Buddha, was a monk, mendicant, and sage, on whose teachings Buddhism was founded.', price: 50)
Mary_Pringle.user = TT
Mary_Pringle.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742166/Mary-Pringle.jpg"
Mary_Pringle.save

Justin_Zeeman = God.new(name: 'Justin Zeeman', location: 'Melbourne', description: 'Muslims believe in the one Creator of the Universe, referring to Him as “Allah” which is the Arabic word for “God”. Muslims worldwide, even English-speaking Muslims, frequently use the Arabic word “Allah” because Arabic is the language of the Qur’an.', price: 50)
Justin_Zeeman.user = TT
Justin_Zeeman.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742191/Justin-Zeeman.gif"
Justin_Zeeman.save

Rachael_Kelsey = God.new(name: 'Rachael Kelsey', location: 'Melbourne', description: '(c. 4 BC – c. AD 30 / 33), also referred to as Jesus of Nazareth and Jesus Christ, was a first-century Jewish preacher and religious leader. He is the central figure of Christianity. Most Christians believe he is the incarnation of God the Son and the awaited Messiah (Christ) prophesied in the Old Testament.', price: 50)
Rachael_Kelsey.user = TT
Rachael_Kelsey.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742199/Rachael-Kelsey-min.jpg"
Rachael_Kelsey.save

Susan_Oswald = God.new(name: 'Susan Oswald', location: 'Melbourne', description: 'Is the sky and thunder god in ancient Greek religion, who rules as king of the gods of Mount Olympus. His name is cognate with the first element of his Roman equivalent Jupiter. His mythologies and powers are similar, though not identical, to those of Indo-European deities such as Indra, Jupiter, Perkūnas, Perun, Thor, and Odin', price: 50)
Susan_Oswald.user = TT
Susan_Oswald.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742195/Susan-Oswald-min.jpg"
Susan_Oswald.save

Megha_Bhandari = God.new(name: 'Megha Bhandari', location: 'Melbourne', description: 'In Norse mythology, from which stems most surviving information about the god, Odin is associated with wisdom, healing, death, royalty, the gallows, knowledge, battle, sorcery, poetry, frenzy, and the runic alphabet, and is the husband of the goddess Frigg. In wider Germanic mythology and paganism, Odin was known in Old English as Wōden, in Old Saxon as Wōdan, and in Old High German as Wuotan or Wōtan, all stemming from the reconstructed Proto-Germanic theonym *wōđanaz.', price: 50)
Megha_Bhandari.user = TT
Megha_Bhandari.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742193/Megha-Bhandari.jpg"
Megha_Bhandari.save

Sarah_Chia = God.new(name: 'Sarah Chia', location: 'Melbourne', description: 'Yahweh, the god of the Israelites, whose name was revealed to Moses as four Hebrew consonants (YHWH) called the tetragrammaton.', price: 50)
Sarah_Chia.user = TT
Sarah_Chia.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742186/Sarah-Chia.jpg"
Sarah_Chia.save

Darien_Nagle = God.new(name: 'Darien Nagle', location: 'Melbourne', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
Darien_Nagle.user = TT
Darien_Nagle.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742160/Darien-Nagle-660x420_c.jpg"
Darien_Nagle.save

John_Kain = God.new(name: 'John Kain', location: 'Melbourne', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
John_Kain.user = TT
John_Kain.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742147/John-Kain.jpg"
John_Kain.save

Robert_Gilmour = God.new(name: 'Robert Gilmour', location: 'Melbourne', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
Robert_Gilmour.user = TT
Robert_Gilmour.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742144/robert-Gilmour-min.jpg"
Robert_Gilmour.save

Monica_Ross_Maranik = God.new(name: 'Monica Ross Maranik', location: 'Melbourne', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
Monica_Ross_Maranik.user = TT
Monica_Ross_Maranik.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742141/Monica-Ross-Maranik.jpg"
Monica_Ross_Maranik.save

Sally_McGuinness = God.new(name: 'Sally McGuinness', location: 'Melbourne', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
Sally_McGuinness.user = TT
Sally_McGuinness.remote_photo_url = "https://res.cloudinary.com/tairtidhar/image/upload/v1548742129/Sally-McGuinness.jpg"
Sally_McGuinness.save

