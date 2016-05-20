class UsersImporter

  def import
    @user1 = User.create(username: "test1", password: "00000000", email: "test1@test.com", phone: "+16046174988")
    @user2 = User.create(username: "test2", password: "00000000", email: "test2@test.com", phone: "+16046174988")
    @user3 = User.create(username: "test3", password: "00000000", email: "test3@test.com", phone: "+16046174988")
  end

end
