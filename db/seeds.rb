User.destroy_all

user1 = User.create!(email: "lisanne@gmail.com", password: "1234abcd", staff: true)

user2 = User.create!(email: "milenko@gmail.com", password: "1234abcd", admin: true)

user3 = User.create!(email: "sam@gmail.com", password: "1234abcd", student: true)

user4 = User.create!(email: "mojgan@gmail.com", password: "1234abcd", student: true)

user5 = User.create!(email: "ben@gmail.com", password: "1234abcd", staff: true)



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
