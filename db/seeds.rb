# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 5.times do |x|
#     Tree.create(name: "arbolito #{x+1}")
# end

['templado', 'tropical', 'arido', 'helao'].each do |clima|
    Weather.create(name: clima)
end