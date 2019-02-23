require 'faker'

puts "destroy users"
User.destroy_all
puts "create users"
User.create!([{
  name: Faker::Name.unique.name,
  username: Faker::Name.unique.name.downcase.strip,
  password: Faker::Crypto.md5,
  bank: Faker::Bank.name,
  account_number: Faker::Bank.account_number,
  monthly_income: 6600
},
{
  name: Faker::Name.unique.name,
  username: Faker::Name.unique.name.downcase.strip,
  password: Faker::Crypto.md5,
  bank: Faker::Bank.name,
  account_number: Faker::Bank.account_number,
  monthly_income: 5000
},
{
  name: Faker::Name.unique.name,
  username: Faker::Name.unique.name.downcase.strip,
  password: Faker::Crypto.md5,
  bank: Faker::Bank.name,
  account_number: Faker::Bank.account_number,
  monthly_income: 6555
},
{
  name: Faker::Name.unique.name,
  username: Faker::Name.unique.name.downcase.strip,
  password: Faker::Crypto.md5,
  bank: Faker::Bank.name,
  account_number: Faker::Bank.account_number,
  monthly_income: 7000
},
{
  name: Faker::Name.unique.name,
  username: Faker::Name.unique.name.downcase.strip,
  password: Faker::Crypto.md5,
  bank: Faker::Bank.name,
  account_number: Faker::Bank.account_number,
  monthly_income: 7300
}])
puts "created users"

puts "destroy categories"
Category.destroy_all
puts "create categories"
Category.create!([{
  name: "Bills & Utilities"
},
{
  name: "Dining & Drinks"
},
{
  name: "Travel"
},
{
  name: "Groceries"
},
{
  name: "Shopping"
},
{
  name: "Commuting & Auto"
},
{
  name: "Personal Care"
},
{
  name: "Others"
}])
puts "created categories"

puts "destroy transactions"
Transaction.destroy_all
puts "create transactions"

transactions = [
  {
    "account_id": "ajoyGBqkBWf5QMRyjew6taWQ54llVzc7a6kxa",
    "amount": 25,
    "category": [
      "Payment",
      "Credit Card"
    ],
    "category_id": "16001000",
    "date": "2019-02-20",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "CREDIT CARD 3333 PAYMENT *//",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "eZbQDPB6Pkuorg71Ky8ZC6XDrJZ4XmfLblQJ6",
    "transaction_type": "special"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": 5.4,
    "category": [
      "Travel",
      "Car Service",
      "Ride Share"
    ],
    "category_id": "22006001",
    "date": "2019-02-20",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Uber 063015 SF**POOL**",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "ajoyGBqkBWf5QMRyjew6taW8dKmBWzS7ExwoV",
    "transaction_type": "special"
  },
  {
    "account_id": "eZbQDPB6Pkuorg71Ky8ZC6Xx3AvvbmtLdvaly",
    "amount": 5850,
    "category": [
      "Payment"
    ],
    "category_id": "16000000",
    "date": "2019-02-19",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "ACH Electronic CreditGUSTO PAY 123456",
    "payment_meta": {
      "payment_method": "ACH"
    },
    "pending": false,
    "transaction_id": "8zWVPDb6D1Clv3ymaRb1iNvWbEB9vACwXV6N8",
    "transaction_type": "special"
  },
  {
    "account_id": "NWAby7Zq7xtoej8NmKkyCg4bZdooa3tWj8Xqd",
    "amount": 1000,
    "category": [
      "Transfer",
      "Deposit"
    ],
    "category_id": "21007000",
    "date": "2019-02-19",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "CD DEPOSIT .INITIAL.",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "Z3dDA8nb81tnz7x3M1R6T1gbd6JBgaFgEDpxM",
    "transaction_type": "special"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 78.5,
    "category": [
      "Recreation",
      "Gyms and Fitness Centers"
    ],
    "category_id": "17018000",
    "date": "2019-02-18",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Touchstone Climbing",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "MkEGVjQlj3up7lgPx6bQCjaNy7r1azf9W8vmq",
    "transaction_type": "place"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": -500,
    "category": [
      "Travel",
      "Airlines and Aviation Services"
    ],
    "category_id": "22001000",
    "date": "2019-02-18",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "United Airlines",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "4lMjdaW6aeF8rzyMqxbDiyz7EpGgzeUdvwz9E",
    "transaction_type": "special"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": 12,
    "category": [
      "Food and Drink",
      "Restaurants"
    ],
    "category_id": "13005000",
    "date": "2019-02-17",
    "iso_currency_code": "USD",
    "location": {
      "store_number": "3322"
    },
    "name": "McDonald's",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "NWAby7Zq7xtoej8NmKkyCg4DkBwq43fWGqdoB",
    "transaction_type": "place"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": 4.33,
    "category": [
      "Food and Drink",
      "Restaurants",
      "Coffee Shop"
    ],
    "category_id": "13005043",
    "date": "2019-02-17",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Starbucks",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "PGmXAQ1rQaCnokLN8JxWTrPjv6g9PZt7era8x",
    "transaction_type": "place"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": 89.4,
    "category": [
      "Food and Drink",
      "Restaurants"
    ],
    "category_id": "13005000",
    "date": "2019-02-16",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "SparkFun",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "jowX6J4pJqCbGlRVJ5zwc8WPGaDVW9t178dxr",
    "transaction_type": "place"
  },
  {
    "account_id": "ajoyGBqkBWf5QMRyjew6taWQ54llVzc7a6kxa",
    "amount": -4.22,
    "category": [
      "Food and Drink",
      "Restaurants"
    ],
    "category_id": "13005000",
    "date": "2019-02-15",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "INTRST PYMNT",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "Qn9gAXLzX4cn7MPNydaRT4jd3g75jVtpgWXjK",
    "transaction_type": "place"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 500,
    "category": [
      "Travel",
      "Airlines and Aviation Services"
    ],
    "category_id": "22001000",
    "date": "2019-02-05",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "United Airlines",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "1nP3B4gJ4kcQrZjBnd4EFErBANLQrxf5kGRDx",
    "transaction_type": "special"
  },
  {
    "account_id": "xzEwmg8xgeCmoKB3Ajd8fpD83PKKAwFn7MyR1",
    "amount": 6.33,
    "category": [
      "Travel",
      "Car Service",
      "Ride Share"
    ],
    "category_id": "22006001",
    "date": "2019-02-03",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Uber 072515 SF**POOL**",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "7r83NanPaMt8lj6GWZMDikxRaqyJxWsg5KP6D",
    "transaction_type": "special"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 500,
    "category": [
      "Food and Drink",
      "Restaurants"
    ],
    "category_id": "13005000",
    "date": "2019-01-31",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Tectra Inc",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "L8gyw4eM4BcLyQpPvD8zCRdPaL5Gd1fPxyM3y",
    "transaction_type": "place"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 2078.5,
    "category": [
      "Payment"
    ],
    "category_id": "16000000",
    "date": "2019-01-30",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "AUTOMATIC PAYMENT - THANK",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "g1vZ6PxpPyhwBxDpgaQ7FQm6G1pvmPFg6QBy1",
    "transaction_type": "special"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 500,
    "category": [
      "Food and Drink",
      "Restaurants"
    ],
    "category_id": "13005000",
    "date": "2019-01-30",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "KFC",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "oAxNoJebJ3SbjXAVMongcVN1jlE8N5CRZnDv7",
    "transaction_type": "place"
  },
  {
    "account_id": "jowX6J4pJqCbGlRVJ5zwc8WvEXnne9t1MKv8j",
    "amount": 500,
    "category": [
      "Shops",
      "Sporting Goods"
    ],
    "category_id": "19046000",
    "date": "2019-01-30",
    "iso_currency_code": "USD",
    "location": {

    },
    "name": "Madison Bicycle Shop",
    "payment_meta": {

    },
    "pending": false,
    "transaction_id": "pGapmPQgPxCRGpBQNeZXFB5my4Wl56FLvNGX3",
    "transaction_type": "place"
  }
]

transactions.each do |transaction|
  users = User.all
  categories = Category.all
  user_id = (0..4).to_a.sample
  category_id = (0..7).to_a.sample
  Transaction.create(user_id: user_id, category_id: category_id, name: transaction[:name], date: transaction[:date], amount: transaction[:amount], location: Faker::Nation.capital_city)
end

puts "created transactions"
