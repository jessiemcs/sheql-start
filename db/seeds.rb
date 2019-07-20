
description_dr = <<-EOS
Makoto Naegi gets accepted into the prestigeous Hope's Peak Academy after winning a lottery to be accepted as the Ultimate Lucky Student. When he enters the school, he passes out and finds himself in an empty classroom.
EOS
description_dr2 = <<-EOS
Hajime Hinata is in the reserve course at Hope's Peak Academy, when he and Class 77-B are thrown into a killing game simulation on Jabberwock Island. He then meets Nagito Komaeda, who introduces him to the rest of the students.
EOS
games = [
	{name: 'Danganronpa: Trigger Happy Havoc', abbreviation: 'DR:THH', release_date:Date.parse('25/11/2010'), description: description_dr, link: 'https://danganronpa.fandom.com/wiki/Portal:Danganronpa:_Trigger_Happy_Havoc', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/9/92/Danganronpa_Trigger_Happy_Havoc_Box_Art_-_PS_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20180404120034'},
	{name: ' Super Danganronpa 2: Goodbye Despair', abbreviation: 'SDR2', release_date:Date.parse('26/7/2012'), description: description_dr2, link:'https://danganronpa.fandom.com/wiki/Portal:Danganronpa_2:_Goodbye_Despair', picture:'https://vignette.wikia.nocookie.net/danganronpa/images/9/99/Danganronpa_2_Goodbye_Despair_Box_Art_-_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20140418154650'},
	{name: 'Danganronpa Another Episode: Ultra Despair Girls', abbreviation: 'DR AE'}
]
games.each do |t|

	Game.create_with(t).find_or_create_by(abbreviation: t[:abbreviation])
end