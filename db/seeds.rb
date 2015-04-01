# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


about = About.create([{about_fr: 'Voici un a propos en francais', about_en: 'Here is my about section',
                       career_fr: 'Ma carriere, mon oeuvre', career_en: 'My career',
                       interests_fr: 'Voici tout ce qui me tiens a coeur', interests_en: 'Here are everything I\'m interested in'}])