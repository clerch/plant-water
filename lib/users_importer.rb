class UsersImporter

  def import
    @user1 = User.create(username: "Chad", password: "00000000", email: "test1@test.com", phone: "+16046174988", communication_method: "SMS")
    @user2 = User.create(username: "Jae", password: "00000000", email: "test2@test.com", phone: "+16046174988", communication_method: "SMS")
    @user3 = User.create(username: "Chris", password: "00000000", email: "test3@test.com", phone: "+16046174988", communication_method: "SMS")
  end

end
