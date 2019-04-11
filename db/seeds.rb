Company.destroy_all
Employee.destroy_all
Office.destroy_all
Building.destroy_all

weworks = [
  {name: "Finsbury Pavement",
   country: "UK",
   address: "131 Finsbury Pavement",
   rent_per_floor: 18000,
   number_of_floors: 8
  },
  {name: "Chelsea HQ",
   country: "US",
   address: "29 West 28th Street",
   rent_per_floor: 20000,
   number_of_floors: 20
  },
  {name: "Broadway",
   country: "US",
   address: "85 Broadway",
   rent_per_floor: 25000,
   number_of_floors: 6
  }
]

weworks.each do |we|
  Building.create(we)
end

companies = [
  "Microsoft",
  "Flatiron",
  "Green Peace",
  "FinFund LLC",
  "Inc'd Comics",
  "Blue Apron",
  "Dog the Bounty Hunter LLC"
]

companies.each do |company|
  Company.create(name: company)
end

titles = [
  "CEO",
  "Engineer",
  "HR specialist",
  "Graphic designer",
  "CFO",
  "COO",
  "Instructor"
]

100.times do
  Employee.create(
    name: Faker::Name.name_with_middle,
    title: titles.sample,
    company: Company.all.sample
  )
end

Office.create(building: Building.first, company: Company.first, floor: 1)
Office.create(building: Building.first, company: Company.second, floor: 3)
Office.create(building: Building.third, company: Company.third, floor: 5)

# 30.times do
#   Office.create(building: Building[rand(1..3)], company: Company[rand(1..7)], floor: rand(0..10))
# end
