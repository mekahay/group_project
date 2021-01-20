# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
    { name: 'mekahay' },
    { name: 'MCK651' }
])

Quote.create([
    { text: 'Never bend your head. Always hold it high. Look the world straight in the eye. - Helen Keller', mood: 'failure', user_id: 1 },
    { text:  'Life is like riding a bicycle. To keep your balance, you must keep moving. - Albert Einstein', mood: 'overwhelmed', user_id: 2 },
    { text: 'Try to be a rainbow in someone elses cloud. - Maya Angelou', mood: 'sad', user_id: 1 }

])