>> Rating.find(:all).map(|r| r.name)
>> Rating::R
>> Rating::PG13
>> Rating::G.description

>> m = Movie.new(:new => 'Rocky Horror Picture Show', :length_minutes => 100,
:rating => Rating::R)
>> m.save


