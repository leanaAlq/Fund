# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Account.destroy_all
Shareholder.destroy_all
Transaction.destroy_all
# account (one account only for now)
first = Account.create(name: "صندوق آل وافي للقروض الحسنة", admin: 1234)

# shareholders
mansi = Shareholder.create(name: "ع. منسي", deposit: 500, gender: "male", mobile: "1111111111", iban: "SA112233445566")
ibrahim = Shareholder.create(name: "إبراهيم منسي", deposit: 500, gender: "male", mobile: "2222222222", iban: "SA68200128397000")
anas = Shareholder.create(name: "أنس", deposit: 500, gender: "male", mobile: "3333333333", iban: "SA68200128397000")
abd = Shareholder.create(name: "عبد الله كامل", deposit: 500, gender: "male", mobile: "4444444444", iban: "SA68200128397000")
abdulrhim = Shareholder.create(name: "ع. عبد الرحيم", deposit: 10000, gender: "female", mobile: "5555555555", iban: "SA68200128397000")
israa = Shareholder.create(name: "إسراء", deposit: 500, gender: "female", mobile: "6666666666", iban: "SA68200128397000")
hind = Shareholder.create(name: "خ. هند مرزوق", deposit: 500, gender: "female", mobile: "7777777777", iban: "SA68200128397000")
ahmed = Shareholder.create(name: "أحمد شكري", deposit: 500, gender: "male", mobile: "0555969650admin", iban: "SA68200128397000", is_admin: true)
yasser = Shareholder.create(name: "ياسر بن وافي", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
aisha = Shareholder.create(name: "عائشة منصور", deposit: 2000, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
mansour = Shareholder.create(name: "ع. منصور بن وافي", deposit: 2000, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
moath = Shareholder.create(name: "معاذ منصور", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
hassan = Shareholder.create(name: "حسان عبد الرحيم", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
sara = Shareholder.create(name: "سارة منصور", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
omar = Shareholder.create(name: "عمر منسي", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
ahmados = Shareholder.create(name: "أحمد عثمان", deposit: 1000, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
rabe = Shareholder.create(name: "ربيع عبد الرحيم", deposit: 1000, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
samera = Shareholder.create(name: "خ.  سميرة", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
hanaa = Shareholder.create(name: "هناء منصور", deposit: 1000, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
abrar = Shareholder.create(name: "أبرار", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
mansia = Shareholder.create(name: "ع. منسية", deposit: 1000, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
kamil = Shareholder.create(name: "ع. كامل ", deposit: 1000, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
osama = Shareholder.create(name: "أسامة كامل", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
heba = Shareholder.create(name: "هبة كامل", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
khobaib = Shareholder.create(name: "خبيب عثمان", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
rajwah = Shareholder.create(name: "رجوة عبد الله", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
munirah = Shareholder.create(name: "خ. منيرة", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
abdullah = Shareholder.create(name: "عبد الله عبدالرحيم", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
huriah = Shareholder.create(name: "ع. حورية", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
marwah = Shareholder.create(name: "مروة عبد الله", deposit: 500, gender: "female", mobile: "99999999999", iban: "SA68200128397000")
abdulziz = Shareholder.create(name: "عبدالعزيز كامل", deposit: 500, gender: "male", mobile: "99999999999", iban: "SA68200128397000")
# account associated with shareholders
first.shareholders << Shareholder.find_by(name: "إبراهيم منسي")
first.shareholders << Shareholder.find_by(name: "أنس")
first.shareholders << Shareholder.find_by(name: "عبد الله كامل")
first.shareholders << Shareholder.find_by(name: "ع. عبد الرحيم")
first.shareholders << Shareholder.find_by(name: "إسراء")
first.shareholders << Shareholder.find_by(name: "خ. هند مرزوق")
first.shareholders << Shareholder.find_by(name: "أحمد شكري")
first.shareholders << Shareholder.find_by(name: "ياسر بن وافي")
first.shareholders << Shareholder.find_by(name: "ع. منسي")
first.shareholders << Shareholder.find_by(name: "عبدالعزيز كامل")
first.shareholders << Shareholder.find_by(name: "مروة عبد الله")
first.shareholders << Shareholder.find_by(name: "ع. حورية")
first.shareholders << Shareholder.find_by(name: "عبد الله عبدالرحيم")
first.shareholders << Shareholder.find_by(name: "خ. منيرة")
first.shareholders << Shareholder.find_by(name: "رجوة عبد الله")
first.shareholders << Shareholder.find_by(name: "خبيب عثمان")
first.shareholders << Shareholder.find_by(name: "هبة كامل")
first.shareholders << Shareholder.find_by(name: "أسامة كامل")
first.shareholders << Shareholder.find_by(name: "ع. كامل ")
first.shareholders << Shareholder.find_by(name: "ع. منسية")
first.shareholders << Shareholder.find_by(name: "أبرار")
first.shareholders << Shareholder.find_by(name: "هناء منصور")
first.shareholders << Shareholder.find_by(name: "خ.  سميرة")
first.shareholders << Shareholder.find_by(name: "ربيع عبد الرحيم")
first.shareholders << Shareholder.find_by(name: "أحمد عثمان")
first.shareholders << Shareholder.find_by(name: "عمر منسي")
first.shareholders << Shareholder.find_by(name: "سارة منصور")
first.shareholders << Shareholder.find_by(name: "حسان عبد الرحيم")
first.shareholders << Shareholder.find_by(name: "معاذ منصور")
first.shareholders << Shareholder.find_by(name: "ع. منصور بن وافي")
first.shareholders << Shareholder.find_by(name: "عائشة منصور")

# transactions

Transaction.create(shareholder_id: sara.id, amount: 4000, plan: 1000)
Transaction.create(shareholder_id: anas.id, amount: 4000, plan: 1000)
Transaction.create(shareholder_id: abd.id, amount: 5000, plan: 850)
Transaction.create(shareholder_id: israa.id, amount: 5000, plan: 850)
Transaction.create(shareholder_id: khobaib.id, amount: 600, plan: 150)
Transaction.create(shareholder_id: huriah.id, amount: 5000, plan: 1000)
Transaction.create(shareholder_id: moath.id, amount: 5000, plan: 1000)
Transaction.create(shareholder_id: marwah.id, amount: 2000, plan: 500)
Transaction.create(shareholder_id: rabe.id, amount: 6000, plan: 850)
