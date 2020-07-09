# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Business.destroy_all
BusinessQuestion.destroy_all
BusinessQuestionAnswer.destroy_all
BusinessGoals.destroy_all
BusinessType.destroy_all

business_question = BusinessQuestion.create(title:"Business", question:"Write a description of your company.")
products_question = BusinessQuestion.create(title:"Products", question:"What product will you be providing your customers?")
market_question = BusinessQuestion.create(title:"Market", question:"Who is your target Market?")
distribution_question = BusinessQuestion.create(title:"Distribution", question:"Where will you source and sell your product?")
competition_question = BusinessQuestion.create(title:"Competition", question:"Who are your competitors?")
team_question = BusinessQuestion.create(title:"Team", question:"What is the current organizational structure at your company?")
financials_question = BusinessQuestion.create(title:"Financials", question:"What is your financial outlook?")
deal_question = BusinessQuestion.create(title:"Deal", question:"Where do you plan do source funding?")
misc_question = BusinessQuestion.create(title:"Misc")

business_type1 = BusinessType.create(style:"Standard")

user1 = User.create(username:"aidanmc95@gmail.com", first_name:"Aidan", last_name:"Muller", zip:52351)
user2 = User.create(username:"mattsedlacek@gmail.com", first_name:"Matt", last_name:"Sedlacek", zip:74634)
user3 = User.create(username:"davidknudson@gmail.com", first_name:"David", last_name:"Knudson", zip:97684)

business1 = Business.create(name: "Aidan's Hardware", user:user1, business_type:business_type1)
business2 = Business.create(name: "Matt's Wax", user:user2, business_type:business_type1)
business3 = Business.create(name: "Shoes", user:user3, business_type:business_type1)

BusinessQuestion.all.each do |question| 
    BusinessQuestionAnswer.create(business:business1, business_question:question, answer:"This is my answer.")
end

business1.addDefaultGoals()