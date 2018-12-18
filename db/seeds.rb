# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Account.destroy_all
Shareholder.destroy_all
Transaction.destroy_all
# account (one account only for now)
first = Account.create(name: "First Account", admin: 1234)

# shareholders
sara = Shareholder.create(name: "Sara", deposit: 5000, gender: "female", mobile: "1111111111", iban: "SA68200128397000")
khalid = Shareholder.create(name: "Khalid", deposit: 1000, gender: "male", mobile: "2222222222", iban: "SA68200128397000")
moh = Shareholder.create(name: "Mohammad", deposit: 500, gender: "male", mobile: "3333333333", iban: "SA68200128397000")
fahad = Shareholder.create(name: "Fahad", deposit: 2000, gender: "male", mobile: "4444444444", iban: "SA68200128397000")
rahaf = Shareholder.create(name: "Rahaf", deposit: 10000, gender: "female", mobile: "5555555555", iban: "SA68200128397000")
saad = Shareholder.create(name: "saad", deposit: 1500, gender: "female", mobile: "6666666666", iban: "SA68200128397000")
faisal = Shareholder.create(name: "faisal", deposit: 5000, gender: "male", mobile: "7777777777", iban: "SA68200128397000")

# account associated with shareholders
first.shareholders << Shareholder.find_by(name: "Sara")
first.shareholders << Shareholder.find_by(name: "Khalid")
first.shareholders << Shareholder.find_by(name: "Mohammad")
first.shareholders << Shareholder.find_by(name: "Fahad")
first.shareholders << Shareholder.find_by(name: "Rahaf")
first.shareholders << Shareholder.find_by(name: "saad")
first.shareholders << Shareholder.find_by(name: "faisal")

# transactions

tran_sara = Transaction.create(shareholder_id: sara.id, amount: 5000, duration: 5, plan: 1000)
Transaction.create(shareholder_id: sara.id, amount: 2000, duration: 4, plan: 500)
