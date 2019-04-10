# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Book.destroy_all

#good omens
@neil_gaiman = Author.create(name: "Neil Gaiman", birth_year: 1960)
@terry_pratchett = Author.create(name: "Terry Pratchett", birth_year: 1948)

@good_omens = Book.create(title: "Good Omens", page_count: 288)
@good_omens.authors << @neil_gaiman
@good_omens.authors << @terry_pratchett

#reaper man
@reaper_man = Book.create(title: "Reaper Man", page_count: 352, authors: [@terry_pratchett])

#heads you lose
@lisa_lutz = Author.create(name: "Lisa Lutz", birth_year: 1970)
@david_hayward = Author.create(name: "David Hayward", birth_year: 1880)

@heads_you_lose = Book.create(title: "Heads You Lose", page_count: 156)
@heads_you_lose.authors << @lisa_lutz
@heads_you_lose.authors << @david_hayward

#between the lines
@jodi_picoult = Author.create(name: "Jodi Picoult", birth_year: 1966)
@samantha_van_leer = Author.create(name: "Samantha van Leer", birth_year: 1880)

@between_the_lines = Book.create(title: "Between the Lines", page_count: 355)
@between_the_lines.authors << @jodi_picoult
@between_the_lines.authors << @samantha_van_leer

#the cinderella murder
