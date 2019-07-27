
description_dr = <<-EOS
Makoto Naegi gets accepted into the prestigeous Hope's Peak Academy after winning a lottery to be accepted as the Ultimate Lucky Student. When he enters the school, he passes out and finds himself in an empty classroom.
EOS
description_dr2 = <<-EOS
Hajime Hinata is in the reserve course at Hope's Peak Academy, when he and Class 77-B are thrown into a killing game simulation on Jabberwock Island. He then meets Nagito Komaeda, who introduces him to the rest of the students.
EOS
games = [
	{name: 'Danganronpa: Trigger Happy Havoc', abbreviation: 'DR:THH', release_date:Date.parse('25/11/2010'), description: description_dr, link: 'https://danganronpa.fandom.com/wiki/Portal:Danganronpa:_Trigger_Happy_Havoc', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/9/92/Danganronpa_Trigger_Happy_Havoc_Box_Art_-_PS_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20180404120034'},
	{name: ' Super Danganronpa 2: Goodbye Despair', abbreviation: 'SDR2', release_date:Date.parse('26/7/2012'), description: description_dr2, link:'https://danganronpa.fandom.com/wiki/Portal:Danganronpa_2:_Goodbye_Despair', picture:'https://vignette.wikia.nocookie.net/danganronpa/images/9/99/Danganronpa_2_Goodbye_Despair_Box_Art_-_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20140418154650'},
	{name: 'Danganronpa Another Episode: Ultra Despair Girls', abbreviation: 'DR AE', release_date: Date.parse('25,9,2014'), description_drae}
]
games.each do |t|

	Game.create_with(t).find_or_create_by(abbreviation: t[:abbreviation])
end
backstory_mn = <<-EOS
Makoto Naegi lived with his parents, who are unnamed, and his younger sister Komaru. He also had a dog at one point in time, that is, unfortunately, deceased. He got into Hope's Peak after winning a raffle of ordinary people, therefore making him the Ultimate Lucky Student. He also went to 
EOS
characters = [
	{name: 'Makoto Naegi', weight:115, height:63, aliases: , talent: 'Ultimate Lucky Student', birthday:Date.parse('5/2/1993'), backstory: description_mn, link: 'https://danganronpa.fandom.com/wiki/Makoto_Naegi', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/7/7c/Makoto_Naegi_Illustration.png/revision/latest/scale-to-width-down/350?cb=20170510004857'}


]
characters.each do |c|
	Character.create_with(c).find_or_create_by(name: c[:name])
end
description_drta = <<-EOS

EOS
anime = [
	{name: 'Danganronpa: The Animation', abbreviation: 'DR:TA', premiere_date:Date.parse('4/7/2013'), description: description_drta, link: 'https://danganronpa.fandom.com/wiki/Danganronpa%3A_The_Animation', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/d/df/Danganronpa_the_Animation_Poster.jpg/revision/latest/scale-to-width-down/350?cb=20180305211035'}
	{name: 'Danganronpa 3'}
]
anime.each do |a|
	Anime.create_with(a).find_or_create_by(abbreviation: a[:abbreviation])
end