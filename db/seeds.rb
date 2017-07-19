User.destroy_all

user1 = User.create!(email: "lisanne@gmail.com", password: "1234asdf", staff: true)

user2 = User.create!(email: "milenko@gmail.com", password: "qwert1234", admin: true)

user3 = User.create!(email: "sam@gmail.com", password: "zxcv0987", student: true)

user4 = User.create!(email: "mojgan@gmail.com", password: "aa123456", student: true)

user5 = User.create!(email: "ben@gmail.com", password: "aa09876", staff: true)



# "email", default: "", null: false
# "encrypted_password", default: "", null: false
# "reset_password_token"
# "reset_password_sent_at"
#  "remember_created_at"
#  "sign_in_count", default: 0, null: false
#  "current_sign_in_at"
#  "last_sign_in_at"
# "current_sign_in_ip"
# "last_sign_in_ip"
#  "created_at", null: false
#  "updated_at", null: false
#  "student"
# "staff"
#  "admin"
#  ["email"], name: "index_users_on_email", unique: true
