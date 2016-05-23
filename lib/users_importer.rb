class UsersImporter

  def import
    @chad = User.create(username: "Chad", password: "11111111", email: "test4@test.com", phone: )
    @user1 = User.create(username: "test1", password: "00000000", email: "test1@test.com", phone: "+16046174988", communication_method: "SMS")
    @user2 = User.create(username: "test2", password: "00000000", email: "test2@test.com", phone: "+16046174988", communication_method: "SMS")
    @user3 = User.create(username: "test3", password: "00000000", email: "test3@test.com", phone: "+16046174988", communication_method: "SMS")
  end

end
