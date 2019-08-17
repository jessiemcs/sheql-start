
description_dr = <<-EOS
Makoto Naegi gets accepted into the prestigeous Hope's Peak Academy after winning a lottery to be accepted as the Ultimate Lucky Student. When he enters the school, he passes out and finds himself in an empty classroom. He makes his way to the gym where he finds the other students, including his middle school friend and the Ultimate Pop Sensation, Sayaka Maizono. After quick speculation on where they might be, Monokuma appears to tell them the rules.
He states that unless someone graduates from Hope's Peak, they'll be trapped there forever. The way to graduate is to commit a murder and get away with it. Monokuma says that if the killer is found, they will be executed, but if the killer gets away, everyone else will be executed. Everybody is given a motive video for a murder if they choose to commit one. They all choose to view the motive videos and 
EOS
description_dr2 = <<-EOS
Hajime Hinata is in the reserve course at Hope's Peak Academy, when he and Class 77-B are thrown into a killing game simulation on Jabberwock Island. He then meets Nagito Komaeda, who introduces him to the rest of the students. Monokuma lays down the rules of the killing game and uses Monomi, or Usami, as a destruction demonstration. Everybody is thrown into the official killing game when Teruteru Hanamura is executed for the murder of The Ultimate Imposter, hiding under the disguise of Byakuya Togami.
EOS
description_drae = <<-EOS
Komaru Naegi has been trapped in an apartment for a year, but one day, a Monokuma invasion gives her the chance to escape. She then receives a special gun from Byakuya Togami
EOS
description_dr3 = <<-EOS
On the Despair side of the story, Hajime Hinata, who is in the reserve course interacts with fellow class: 77-B. The students of this class participate in (almost) normal school activities, until Junko Enoshima succeeds in turning Hajime into Izuru Kamakura and turns Class 77-B student, Mikan Tsumiki into a despaired version of herself. After Mikan's transition to despair, she returns to class as normal. Class 77 then proceeds to the same location where the cast of Danganronpa: Trigger Happy Havoc/ Danganronpa: The Animation held class trials. After being pushed into an elevator via a secret room, class representative, Chiaki Nanami is sent to be executed'
EOS
description_drv3 = <<-EOS
Kaede Akamatsu wakes up inside Hope's Peak Academy after falling out of a locker. She then meets Shuichi Saihara in the same room. The two of them go to the gym where the 14 other students await them. 
EOS
games = [
	{name: 'Danganronpa: Trigger Happy Havoc', abbreviation: 'DR:THH', release_date:Date.parse('25/11/2010'), description: description_dr, link: 'https://danganronpa.fandom.com/wiki/Portal:Danganronpa:_Trigger_Happy_Havoc', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/9/92/Danganronpa_Trigger_Happy_Havoc_Box_Art_-_PS_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20180404120034'},
	{name: 'Super Danganronpa 2: Goodbye Despair', abbreviation: 'SDR2', release_date:Date.parse('26/7/2012'), description: description_dr2, link:'https://danganronpa.fandom.com/wiki/Portal:Danganronpa_2:_Goodbye_Despair', picture:'https://vignette.wikia.nocookie.net/danganronpa/images/9/99/Danganronpa_2_Goodbye_Despair_Box_Art_-_Vita_-_North_America.jpg/revision/latest/scale-to-width-down/160?cb=20140418154650'},
	{name: 'Danganronpa Another Episode: Ultra Despair Girls', abbreviation: 'DR AE', release_date:Date.parse('25/9/2014'), description: description_drae, link:'https://danganronpa.fandom.com/wiki/Danganronpa_Another_Episode:_Ultra_Despair_Girls', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/2/23/Danganronpa_Another_Episode_Box_Art_-_PS4_-_North_American.jpg/revision/latest/scale-to-width-down/350?cb=20180404124158'},
	{name: 'Danganronpa V3: Killing Harmony', abbreviation: 'DRV3', release_date:Date.parse('26/9/2017'), description: description_drv3, link: 'https://danganronpa.fandom.com/wiki/Portal:Danganronpa_V3:_Killing_Harmony', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/d/d6/Danganronpa_V3-_Killing_Harmony_PS4_box_art.jpg/revision/latest/scale-to-width-down/160?cb=20170829045900'}
]
games.each do |t|

	Game.create_with(t).find_or_create_by(abbreviation: t[:abbreviation]).tap do |game|
		game.update(t)
	end
end
description_mn = <<-EOS
Makoto Naegi lived with his parents, who are unnamed, and his younger sister Komaru. He also had a dog at one point in time, that is, unfortunately, deceased. He got into Hope's Peak after winning a raffle of ordinary people, therefore making him the Ultimate Lucky Student. He then went to Hope's Peak for the Killing School Life
EOS
description_hh = <<-EOS
Hajime Hinata lived with his unnamed parents before becoming a reserve course student at Hope's Peak before participating in the Killing School Trip.
EOS
characters = [
	{name: 'Makoto Naegi', weight:115, height:63, aliases: "Hope's Peak Headmaster" , talent: 'Ultimate Lucky Student', birthday:Date.parse('5/2/1993'), backstory: description_mn, link: 'https://danganronpa.fandom.com/wiki/Makoto_Naegi', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/7/7c/Makoto_Naegi_Illustration.png/revision/latest/scale-to-width-down/350?cb=20170510004857'},
	{name: 'Hajime Hinata', weight:147, height:68, aliases:'none', talent: 'Ultimate ???', birthday:Date.parse('1/1/1994'), backstory: description_hh, link: 'https://danganronpa.fandom.com/wiki/Hajime_Hinata', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/f/f3/Hajime_Hinata_Illustration.png/revision/latest/scale-to-width-down/350?cb=20170608041605'}


]
characters.each do |c|
	Character.create_with(c).find_or_create_by(name: c[:name])
end
description_drta = <<-EOS

EOS
anime = [
	{name: 'Danganronpa: The Animation', abbreviation: 'DR:TA', premiere_date:Date.parse('4/7/2013'), description: description_dr, link: 'https://danganronpa.fandom.com/wiki/Danganronpa%3A_The_Animation', picture: 'https://vignette.wikia.nocookie.net/danganronpa/images/d/df/Danganronpa_the_Animation_Poster.jpg/revision/latest/scale-to-width-down/350?cb=20180305211035'},
	{name: "Danganronpa 3: End of Hope's Peak Academy", abbreviation: 'DR3', premiere_date: Date.parse('7/11/2016'), description: description_dr3},
]
anime.each do |a|
	Anime.create_with(a).find_or_create_by(abbreviation: a[:abbreviation])
end



anime_characters = [
{abbreviation: 'DR:TA', name: 'Makoto Naegi'},
{abbreviation: 'DR3', name: 'Makoto Naegi'},
]
anime_characters.each do |d|
	AnimeCharacter.find_or_create_by(anime: Anime.find_by(abbreviation: d[:abbreviation]), character: Character.find_by(name: d[:name]))
end
game_characters = [
	{abbreviation: 'DR:THH', name: 'Makoto Naegi'},
	{abbreviation: 'SDR2', name: 'Hajime Hinata'}
]
game_characters.each do |r|
	Character.find_by(name: r[:name]).update(game: Game.find_by(abbreviation: r[:abbreviation]))
end