class Business < ApplicationRecord
  belongs_to :user
  belongs_to :business_type
  has_many :business_question_answers
  has_many :business__questions, through: :business_question_answers
  has_many :business_goals, through: :business_question_answers

  def addDefaultGoals
    default = [[0, "Company business", "Write a brief description of your business that fits on a business card."],
    [0, "Mission statement", "What is your company mission statement?"],
    [1, "Product description", "List the products and descriptions that your company provides"],
    [1, "Development Schedule", "How long will you need before you start selling your product?"], 
    [1, "Differentiation", "How will your product stand out?"], 
    [1, "Price Point", "What is the cost of production and what will you be selling at?"],
    [2, "Trends", "Look into where the market is headed and get in front of it."],
    [2, "Historic and projected sizes in dollars", "What has this market looked like in the past? Is it growing?"],
    [2, "Product match to market definition", "Do some research on what customers are expecting."],
    [3, "Sales Channels", "Where are you selling your product?"],
    [3, "Partnerships", "Where are you getting your products from?"],
    [4, "Competitive disadvantages", "What do you not have that your competitors do and what will you do to change this?"],
    [4, "Competitive advantages", "What are you doing that your competitors are not?"],
    [5, "Background of Management", "Who are the leaders of your company and what are their accomplishments?"],
    [5, "Board Composition", "Do you need one? If so, who is going to be on it and why?"],
    [6, "Historic and projected Profit & Loss (first two years by quarters)", "i.   Provide all historic revenues by quarter in ($000’s)
      ii.  Provide all Operating Expenses by quarter ($000’s)
      iii. Provide all non-operating revenues and gains by quarter ($000’s)
      iv.  Provide all non-operating expenses and loses by quarter ($000’s)"],
    [6, "Projected headcount by functional area (R&D, sales, marketing, G&A)", "i.   List projected headcount for R&D for the next 4 quarters
      ii.  List projected headcount for Sales for the next 4 quarters
      iii. List projected headcount for Marketing for the next 4 quarters
      iv.  List projected headcount for G&A for the next 4 quarters"],
    [6, "Capitalization schedule", "List assets purchased, including install date and total purchase price"],
    [7, "Amount Rose", "Amount raised in funding, list source, amount, and date received"]]
    
    default.each do |i|
      BusinessGoal.create(title: i[1], description: i[2], business_question_answer: self.business_question_answers[i[0]])
    end
    return self
  end
end
