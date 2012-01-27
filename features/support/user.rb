Before('@user_logged_in') do
  user = User.create(name: "test_user", email: "fred@powerhat.org", password_confirmation: "fred@powerhat.org", admin: false)
  login_as user
end
